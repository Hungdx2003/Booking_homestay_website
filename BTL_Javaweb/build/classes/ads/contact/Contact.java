package ads.contact;
import java.sql.*;
import java.util.*;

import ads.object.*;
public interface Contact {
	boolean addContact(ContactObject item);
	boolean editContact(ContactObject item);
	boolean delContact(ContactObject item);
	
	ArrayList<ResultSet> getContact(String multiSelect);
	ArrayList<ResultSet> getContact(ContactObject similar, int at, byte total);
	ResultSet getContact(int id);
	ResultSet getContact(String Contactname, String Contactpass);
}

