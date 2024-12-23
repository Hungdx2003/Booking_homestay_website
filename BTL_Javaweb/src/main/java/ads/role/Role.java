package ads.role;

import java.sql.*;
import java.util.*;

import ads.objects.RoleObject;

public interface Role {
	boolean addRole(RoleObject item);
	boolean editRole(RoleObject item);
	boolean delRole(RoleObject item);
	
	ArrayList<ResultSet> getRole(RoleObject similar, int at, byte total);
	ResultSet getRole(int id);
}
