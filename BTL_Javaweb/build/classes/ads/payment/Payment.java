package ads.payment;

import java.sql.ResultSet;
import java.util.ArrayList;

import ads.object.PaymentObject;

public interface Payment {
	boolean addPayment(PaymentObject item);
	boolean editPayment(PaymentObject item);
	boolean delPayment(PaymentObject item);
	
	ArrayList<ResultSet> getPayment(String multiSelect);
	ArrayList<ResultSet> getPayment(PaymentObject similar, int at, byte total);
	ResultSet getPayment(int id);
	ResultSet getPayment(String Paymentname, String Paymentpass);
}
