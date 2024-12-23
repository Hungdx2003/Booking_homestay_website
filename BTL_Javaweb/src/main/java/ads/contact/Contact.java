package ads.contact;
import java.sql.*;
import java.util.*;

import ads.objects.*;
public interface Contact {
	boolean addContact(ContactObject item);
	boolean editContact(ContactObject item);
	boolean delContact(ContactObject item);
	
	ArrayList<ResultSet> getContact(String multiSelect);
	ArrayList<ResultSet> getContact(ContactObject similar, int at, byte total);
}

