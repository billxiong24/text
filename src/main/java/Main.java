import java.sql.*;
import java.util.*;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;

import com.mongodb.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;


public class Main {

  public static void main(String[] args) {

      port(Integer.valueOf(System.getenv("PORT")));
      staticFileLocation("/public");

      get("/", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          /*attributes.put("message", "Hello World!");*/

          return new ModelAndView(attributes, "index.ftl");
      }, new FreeMarkerEngine());
      get("/auth.ftl", (request, response) -> {
          Map<String, Object> attributes = new HashMap<>();
          /*attributes.put("message", "Hello World!");*/

          return new ModelAndView(attributes, "auth.ftl");
      }, new FreeMarkerEngine());

      post("/home.ftl", (req, res) -> {
          MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
          MongoClient client = new MongoClient(uri);
          DB db = client.getDB(uri.getDatabase());
          Map<String, Object> attributes = new HashMap<>();

          return new ModelAndView(attributes, "home.ftl");
      }, new FreeMarkerEngine());
      get("/data.ftl", (req, res) -> {
          MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
          MongoClient client = new MongoClient(uri);
          DB db = client.getDB(uri.getDatabase());
          Map<String, Object> attributes = new HashMap<>();

          return new ModelAndView(attributes, "data.ftl");
      }, new FreeMarkerEngine());
    /*get("/db", (req, res) -> {
      Connection connection = null;
      Map<String, Object> attributes = new HashMap<>();
      try {
        connection = DatabaseUrl.extract().getConnection();

        Statement stmt = connection.createStatement();
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
        stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
        ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

        ArrayList<String> output = new ArrayList<>();
        while (rs.next()) {
          output.add( "Read from DB: " + rs.getTimestamp("tick"));
        }

        attributes.put("results", output);
        return new ModelAndView(attributes, "db.ftl");
      } catch (Exception e) {
        attributes.put("message", "There was an error: " + e);
        return new ModelAndView(attributes, "error.ftl");
      } finally {
        if (connection != null) try{connection.close();} catch(SQLException e){}
      }
    }, new FreeMarkerEngine());*/

      get("/billdb", (req, res) -> {
          MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
          MongoClient client = new MongoClient(uri);
          DB db = client.getDB(uri.getDatabase());
          DBCollection collection = db.getCollection("bill");
          Map<String, Object> attributes = new HashMap<>();
          attributes.put("message", collection.getCount() + "Bill is gay");

          return new ModelAndView(attributes, "billdb.ftl");
      }, new FreeMarkerEngine());

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

  private static String method(){

      MongoClientURI uri = new MongoClientURI("mongodb://bill:password@ds013911.mlab.com:13911/heroku_ncrkq8j9");
      MongoClient client = new MongoClient(uri);
      DB db = client.getDB(uri.getDatabase());

      DBCollection collection = db.getCollection("bill");
      BasicDBObject doc = new BasicDBObject("name", "MongoDB").append("type", "database")
              .append("count", 1)
              .append("info", new BasicDBObject("x", 203).append("y", 102));
      collection.insert(doc);

      Map<String, Object> attributes = new HashMap<>();
      attributes.put("message", collection.getCount()+"Bill is gay");
      return "test";
  }

}
