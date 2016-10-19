import java.sql.*;
import java.util.*;

import static spark.Spark.*;

import com.mongodb.*;
import spark.Request;
import spark.Response;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;
import sun.security.util.ObjectIdentifier;
import sun.security.util.Password;


public class Main {
    private static final String CURR_USER = "currUser";
    private static final String ERROR = "error";
    private static final String USERS = "users";
    private static final String ALREADY_EXISTS = "That username already exists.";
    private static final String AUTH_FAILED = "Invalid username or password";

    private static HashMap<String, Object> session = new HashMap<>();
    private static boolean firstTime = true;
    private static boolean signUpFailed = false;
  public static void main(String[] args) {

      port(Integer.valueOf(System.getenv("PORT")));
      staticFileLocation("/public");

      get("/", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          /*attributes.put("message", "Hello World!");*/

          return new ModelAndView(attributes, "index.ftl");
      }, new FreeMarkerEngine());
      get("/signup.ftl", (request, response) -> {
          firstTime = true;
          Map<String, Object> attributes = new HashMap<>();
          if(!signUpFailed)
            attributes.put(ERROR, "");
          else{
              attributes.put(ERROR, ALREADY_EXISTS);
          }
          signUpFailed = false;
          return new ModelAndView(attributes, "signup.ftl");
      }, new FreeMarkerEngine());

      get("/auth.ftl", (request, response) -> {
          if(session.containsKey(CURR_USER))
            session.remove(CURR_USER);

          firstTime = false;
          Map<String, Object> attributes = new HashMap<>();
          attributes.put(ERROR, "");
          return new ModelAndView(attributes, "auth.ftl");
      }, new FreeMarkerEngine());
      post("/home.ftl", (req, res) ->{
          res.header("Cache-Control", "no-cache, no-store, must-revalidate");
          Map<String, Object> attributes = new HashMap<>();
          if(!authenticate(req, res)){
              attributes.put(ERROR, AUTH_FAILED);
              return new ModelAndView(attributes, "/auth.ftl");
          }
          else{
              User user = (User) session.get(CURR_USER);
              attributes.put("name", user.getFirstName());
              return new ModelAndView(attributes, "/home.ftl");
          }
      }, new FreeMarkerEngine());

/*      post("/home.ftl", (req, res) -> {
          res.header("Cache-Control", "no-cache, no-store, must-revalidate");
          //res.header("Pragma", "no-cache"); // HTTP 1.0.
          //res.header("Expires", "0"); // Proxies.
          if(session.get(CURR_USER) != null){
              User user = (User) session.get(CURR_USER);
              return new ModelAndView(user.getAttributes(), "/home.ftl");
          }
          return null;
      }, new FreeMarkerEngine());*/

      //dynamically add html tags
      post("/page2", (req, res) -> {
          String str = req.queryParams("search");
          MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
          MongoClient client = new MongoClient(uri);
          DB db = client.getDB(uri.getDatabase());
          Set<String> set = db.getCollectionNames();


          List<String> users = new ArrayList<>();
          Map<String, Object> attributes = new HashMap<>();
          //loop through all the collections.
          for(String s : set){
              BasicDBObject query = new BasicDBObject();
              query.put("name", str);
              DBCollection collection = db.getCollection(s);
              DBCursor cursor = collection.find(query);
              while(cursor.hasNext()){
                  //use this to get specific fields.
                  users.add((String) cursor.next().get("address"));
              }
          }
          attributes.put("users", users);
          System.out.println(users);
          return new ModelAndView(attributes, "page2.ftl");
      }, new FreeMarkerEngine());
  }
  private static boolean authenticate(Request req, Response res){
      String user = req.queryParams(User.USERNAME);
      String pass = req.queryParams(User.PASSWORD);
      DB db = getDataBase();
      DBCollection collection = db.getCollection(USERS);
      BasicDBObject query = new BasicDBObject(User.USERNAME,  user);
      DBCursor cursor = collection.find(query);

      String firstName;
      String lastName;
      while(cursor.hasNext()){
          DBObject d = cursor.next();
          String p = (String) d.get(User.PASSWORD);
          if(pass.equals(p)){
              firstName = (String) d.get(User.FIRST_NAME);
              lastName = (String) d.get(User.LAST_NAME);
              session.put(CURR_USER, new User(firstName, lastName));
              return true;
          }
      }
      return false;
  }

  private static ModelAndView signUp(Request req, Response res){
      String user = req.queryParams("username");
      String pass = req.queryParams("password");
      String first = req.queryParams("first-name");
      String last = req.queryParams("last-name");
      //get access to the database
      DB db = getDataBase();
      //check for duplicate users
      DBCollection collection = db.getCollection("users");
      Map<String, Object> attributes = new HashMap<>();
      attributes.put("error", "");
      //username already exists
      if(!checkDuplicateUsers(db, user)){
          attributes.put("error", "That username already exists.");
          signUpFailed = true;
          res.redirect("/signup.ftl");
          return new ModelAndView(attributes, "signup.ftl");
      }
      BasicDBObject doc = new BasicDBObject("first-name", first).append("last-name", last)
              .append("username", user)
              .append("password", pass);
      collection.insert(doc);

      attributes.put("name", first);
      signUpFailed = false;
      return new ModelAndView(attributes, "home.ftl");
  }
  private static boolean checkDuplicateUsers(DB db, String user){
      DBCollection collection = db.getCollection("users");
      BasicDBObject query = new BasicDBObject();
      query.put("username", user);
      DBCursor cursor = collection.find(query);
      int check = 0;
      while(cursor.hasNext()){
          cursor.next();
          ++check;
      }
      return check == 0;
  }
  private static DB getDataBase(){
      MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
      MongoClient client = new MongoClient(uri);
      return client.getDB(uri.getDatabase());
  }

}
