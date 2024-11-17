package ads.payment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import ads.object.PaymentObject;
import ads.basic.BasicImpl;

public class PaymentImpl implements Payment {
	
	public PaymentImpl() {
		super("Payment");
	}
	
	@Override
	public boolean addPayment(PaymentObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblPayment(");
		sql.append("payment_id, booking_id, pay_date, amount, pay_method, notes, status) ");
		sql.append("VALUES(?,?,?,?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setInt(1, item.getPayment_id());
			pre.setInt(2, item.getBooking_id());
			pre.setString(3, item.getPay_date());
			pre.setInt(4, item.getAmount());
			pre.setString(5, item.getPay_method());
			pre.setString(6, item.getNotes());
			pre.setString(7, item.getStatus());
            return this.add(pre);  
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean editPayment(PaymentObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tblPayment SET ");
		sql.append("payment_id = ?, booking_id = ?, pay_date  = ?, amount  = ?, pay_method  = ?, notes  = ?, status  = ?) ");
		sql.append("WHERE room_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setInt(1, item.getPayment_id());
			pre.setInt(2, item.getBooking_id());
			pre.setString(3, item.getPay_date());
			pre.setInt(4, item.getAmount());
			pre.setString(5, item.getPay_method());
			pre.setString(6, item.getNotes());
			pre.setString(7, item.getStatus());
            return this.edit(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean delPayment(PaymentObject item) {
		// TODO Auto-generated method stub
		 String sql = "DELETE FROM tblPayment WHERE Payment_id=?";
	        try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	            pre.setInt(1, item.getPayment_id());
	            return this.del(pre);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		return false;
	}

	@Override
	public ArrayList<ResultSet> getPayment(String multiSelect) {
		// TODO Auto-generated method stub
		if (multiSelect!=null && !"".equalsIgnoreCase(multiSelect)) {
			return this.gets(multiSelect);
		}else {
			StringBuilder sql= new StringBuilder();
			sql.append("SELECT * FROM tblPayment ");
			sql.append("");
			sql.append("ORDER BY Payment_id DESC ");
			sql.append("LIMIT 10;");
			return this.gets(sql.toString());
		}
	}

	@Override
	public ArrayList<ResultSet> getPayment(PaymentObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT * FROM tblPayment ");
		sql.append("");
		sql.append("ORDER BY Payment_id DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
		
		
		return this.gets(sql.toString());
	}

	@Override
	public ResultSet getPayment(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tblPayment WHERE Payment_id=?";
		return this.get(sql, id);
	}

	@Override
	public ResultSet getPayment(String Paymentname, String Paymentpass) {
		// TODO Auto-generated method stub
		return null;
	}
}
