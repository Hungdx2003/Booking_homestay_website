package ads.booking;

import java.sql.ResultSet;
import java.util.ArrayList;

import ads.object.bookingObject;

public interface booking {
	boolean addBooking(bookingObject item);
	boolean editBooking(bookingObject item);
	boolean delBooking(bookingObject item);
	
	ArrayList<ResultSet> getBooking(String multiSelect);
	ArrayList<ResultSet> getBooking(bookingObject similar, int at, byte total);
	ResultSet getBooking(int id);
}
