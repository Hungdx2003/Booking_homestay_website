package ads.payment;
import java.sql.*;
import java.util.*;

import ads.object.*;
public interface Payment {
	boolean addPayment(PaymentObject item);
	boolean editPayment(PaymentObject item);
	boolean delPayment(PaymentObject item);
	
	ArrayList<ResultSet> getPayment(String multiSelect);
	ArrayList<ResultSet> getPayment(PaymentObject similar, int at, byte total);
	ResultSet getPayment(int id);
	ResultSet getPayment(String Paymentname, String Paymentpass);
}

