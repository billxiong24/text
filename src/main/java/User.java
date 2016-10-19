import java.util.HashMap;
import java.util.Map;

public class User {
    public static final String USERNAME = "username";
    public static final String PASSWORD = "password";
    public static final String FIRST_NAME = "first-name";
    public static final String LAST_NAME = "last-name";
    private Map<String, Object> attributes;
    private boolean loggedIn;

    public User(String first, String last){
        attributes = new HashMap<>();
        attributes.put(FIRST_NAME, first);
        attributes.put(LAST_NAME, last);
        loggedIn = false;
    }
    public Map<String, Object> getAttributes(){
        return attributes;
    }
    public String getFirstName(){
        return (String) attributes.get(FIRST_NAME);
    }
    public String getLastName(){
        return (String) attributes.get(LAST_NAME);
    }

    public void putPassword(String password){
        attributes.put(PASSWORD, password);
    }
    public void putUsername(String username){
        attributes.put(USERNAME, username);
    }
    public void addFirstName(String first){
        attributes.put(FIRST_NAME, first);
    }
    public void addLastName(String last){
        attributes.put(LAST_NAME, last);
    }
    public void switchLog(boolean val) {
        loggedIn = val;
    }

}
