package ads.booking;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.basic.basicImpl;
import ads.object.bookingObject;

public class bookingImpl extends basicImpl implements booking {

	public bookingImpl() {
		super("Booking");
	}
	
	@Override
	public boolean addBooking(bookingObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblbooking(");
		sql.append("check_in_date, check_out_date, max_opacity, est_Days, total_price, booking_notes, booking_status) ");
		sql.append("VALUES(?,?,?,?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setString(1, item.getCheck_in_date());
			pre.setString(2, item.getCheck_out_date());
			pre.setString(3, item.getMax_opacity());
			pre.setInt(4, item.getEst_Days());
			pre.setInt(5, item.getTotal_price());
			pre.setString(6, item.getBooking_notes());
			pre.setString(7, item.getBooking_status());
            return this.add(pre);  
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean editBooking(bookingObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tblbooking SET ");
		sql.append("check_in_date = ?, check_out_date = ?, max_opacity  = ?, est_Days  = ?, total_price  = ?, booking_notes  = ?, booking_status  = ?) ");
		sql.append("WHERE room_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setString(1, item.getCheck_in_date());
			pre.setString(2, item.getCheck_out_date());
			pre.setString(3, item.getMax_opacity());
			pre.setInt(4, item.getEst_Days());
			pre.setInt(5, item.getTotal_price());
			pre.setString(6, item.getBooking_notes());
			pre.setString(7, item.getBooking_status());
            return this.edit(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean delBooking(bookingObject item) {
		// TODO Auto-generated method stub
		 String sql = "DELETE FROM tblbooking WHERE booking_id=?";
	        try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	            pre.setInt(1, item.getBooking_id());
	            return this.del(pre);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		return false;
	}

	@Override
	public ArrayList<ResultSet> getBooking(String multiSelect) {
		// TODO Auto-generated method stub
		if (multiSelect!=null && !"".equalsIgnoreCase(multiSelect)) {
			return this.gets(multiSelect);
		}else {
			StringBuilder sql= new StringBuilder();
			sql.append("SELECT * FROM tblbooking ");
			sql.append("");
			sql.append("ORDER BY booking_id DESC ");
			sql.append("LIMIT 10;");
			return this.gets(sql.toString());
		}
	}

	@Override
	public ArrayList<ResultSet> getBooking(bookingObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT * FROM tblbooking ");
		sql.append("");
		sql.append("ORDER BY booking_id DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
		
		
		return this.gets(sql.toString());
	}

	@Override
	public ResultSet getBooking(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tblbooking WHERE booking_id=?";
		return this.get(sql, id);
	}

}
