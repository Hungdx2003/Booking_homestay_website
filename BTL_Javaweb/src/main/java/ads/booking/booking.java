package ads.booking;

import java.sql.ResultSet;
import java.util.ArrayList;

import ads.objects.bookingObject;

public interface booking {
	String  addBooking(bookingObject item);
	boolean editBooking(bookingObject item);
	boolean delBooking(bookingObject item);
	
	ArrayList<ResultSet> getBooking(String multiSelect);
	ArrayList<ResultSet> getBooking(bookingObject similar, int at, byte total);
	ArrayList<ResultSet> getEBooking(bookingObject similar, int at, byte total);
	ResultSet getBooking(int id);
	ResultSet getEBooking(int id);
	ArrayList<ResultSet> getUserBooking(bookingObject similar,int id);
}
