package ads.user;

import java.sql.*;
import java.util.*;

import ads.objects.UserObject;

public interface User {
	boolean addUser(UserObject item);
	boolean editUser(UserObject item);
	boolean delUser(UserObject item);
	
	ArrayList<ResultSet> getUser(UserObject similar, int at, byte total);
	ResultSet getUser(int id);
	ResultSet getUser(String username, String userpass);
	
}
