package ads.payment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.objects.PaymentObject;
import ads.basic.BasicImpl;

public class PaymentImpl extends BasicImpl implements Payment{
	
	public PaymentImpl() {
		super("Payment");
	}
	
	@Override
	public boolean addPayment(PaymentObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblPayment(");
		sql.append("booking_id, status) ");
		sql.append("VALUES(?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
			pre.setInt(1, item.getBooking_id());
			pre.setString(2, item.getStatus());
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
		sql.append("amount  = ?,  status  = ?, pay_method=? ");
		sql.append("WHERE payment_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setInt(1, item.getAmount());
			pre.setString(2, item.getStatus());
			pre.setString(3, item.getPay_method());
			pre.setInt(4, item.getPayment_id());
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
	    StringBuilder sql = new StringBuilder();
	    sql.append("SELECT p.payment_id, p.pay_date, p.amount, p.pay_method, p.notes, p.status, ");
	    sql.append("u.user_full_name ");
	    sql.append("FROM tblPayment p ");
	    sql.append("JOIN tblBooking b ON p.booking_id = b.booking_id ");
	    sql.append("JOIN tblUser u ON b.user_id = u.user_id ");
	    sql.append("ORDER BY p.payment_id DESC ");
	    sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
	    
	    return this.gets(sql.toString());
	}


	@Override
	public ResultSet getPayment(int id) {
	    // Xây dựng câu truy vấn để JOIN các bảng và tìm theo mã thanh toán
	    String sql = "SELECT p.payment_id, p.pay_date, p.amount, p.pay_method, p.status, " +
	                 "b.check_in_date, b.check_out_date, b.est_Days, b.total_price, " +
	                 "u.user_full_name, u.user_email, u.user_phone_number, " +
	                 "r.room_type, r.room_noBeds, r.room_price " +
	                 "FROM tblPayment p " +
	                 "JOIN tblBooking b ON p.booking_id = b.booking_id " +
	                 "JOIN tblUser u ON b.user_id = u.user_id " +
	                 "JOIN tblRoom r ON b.room_id = r.room_id " +
	                 "WHERE p.payment_id = ?";
	    return this.get(sql, id);
	}


	@Override
	public ResultSet getPayment(String Paymentname, String Paymentpass) {
		// TODO Auto-generated method stub
		return null;
	}
}
