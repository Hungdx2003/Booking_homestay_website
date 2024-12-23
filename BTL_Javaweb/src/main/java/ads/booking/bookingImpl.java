package ads.booking;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;

import ads.basic.BasicImpl;
import ads.objects.bookingObject;

public class bookingImpl extends BasicImpl implements booking {

	public bookingImpl() {
		super("Booking");
	}
	
	@Override
	public String addBooking(bookingObject item) {
	    String findRoom = "SELECT r.room_id, r.room_price FROM tblroom r " +
	        "LEFT JOIN tblbooking b ON r.room_id = b.room_id " +
	        "AND b.booking_status != 'Đã hủy' " +
	        "AND ( " +
	        "(? BETWEEN b.check_in_date AND b.check_out_date) OR " +
	        "(? BETWEEN b.check_in_date AND b.check_out_date) OR " +
	        "(b.check_in_date BETWEEN ? AND ?) " +
	        ") " +
	        "WHERE r.room_type = ? AND r.room_noBeds = ? AND r.room_status = 'Còn trống' " +
	        "AND b.room_id IS NULL LIMIT 1";

	    String addBooking = 
	        "INSERT INTO tblbooking( user_id, room_id, check_in_date, check_out_date, reason_cancel, est_Days, total_price, booking_notes, booking_status) " +
	        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

	    try {
	        PreparedStatement findRoomStmt = this.con.prepareStatement(findRoom);
	        findRoomStmt.setString(1, item.getCheck_in_date());
	        findRoomStmt.setString(2, item.getCheck_out_date());
	        findRoomStmt.setString(3, item.getCheck_in_date());
	        findRoomStmt.setString(4, item.getCheck_out_date());
	        findRoomStmt.setString(5, item.getRoom_type());
	        findRoomStmt.setString(6, item.getRoom_noBeds());
	        
	        ResultSet rs = findRoomStmt.executeQuery();
	        if (rs.next()) {
	            int roomId = rs.getInt("room_id");
	            int roomPrice = rs.getInt("room_price");
	            int estDays = calculateDays(item.getCheck_in_date(), item.getCheck_out_date());
	            int totalPrice = roomPrice * estDays;

	            PreparedStatement addBookingStmt = this.con.prepareStatement(addBooking);
	            addBookingStmt.setInt(1, item.getUser_id());
	            addBookingStmt.setInt(2, roomId);
	            addBookingStmt.setString(3, item.getCheck_in_date());
	            addBookingStmt.setString(4, item.getCheck_out_date());
	            addBookingStmt.setString(5, item.getReason_cancel());
	            addBookingStmt.setInt(6, estDays);
	            addBookingStmt.setDouble(7, totalPrice);
	            addBookingStmt.setString(8, item.getBooking_notes());
	            addBookingStmt.setString(9, item.getBooking_status());

	            if (this.add(addBookingStmt)) {
	                return "success";
	            } else {
	                return "error";
	            }
	        } else {
	            return "no_rooms";
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return "exception";
	    }
	}

	
	public int calculateDays(String checkIn, String checkOut) {
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    LocalDate startDate = LocalDate.parse(checkIn, formatter);
	    LocalDate endDate = LocalDate.parse(checkOut, formatter);
	    return (int) ChronoUnit.DAYS.between(startDate, endDate);
	}

	@Override
	public boolean editBooking(bookingObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tblbooking b JOIN tblroom r ON b.room_id = r.room_id SET ");
		sql.append("b.booking_status  = ?, r.room_status = ? ");
		sql.append("WHERE booking_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
			pre.setString(1, item.getBooking_status());
			pre.setString(2, item.getRoom_status());
			pre.setInt(3, item.getBooking_id());
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
	
	//part2
	@Override
	public ArrayList<ResultSet> getEBooking(bookingObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT u.user_full_name, u.user_gender, u.user_address, u.user_id_number, u.user_birthday, u.user_phone_number, "
				+ "b.booking_id, b.check_in_date, b.booking_notes, b.booking_status, r.room_type ");
		sql.append("FROM tbluser u ");
		sql.append("INNER JOIN  tblbooking b ON u.user_id = b.user_id ");
		sql.append("INNER JOIN tblroom r ON b.room_id = r.room_id ");
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
	public ArrayList<ResultSet> getUserBooking(bookingObject similar,int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tblbooking WHERE user_id="+id;
		return this.gets(sql);
	}
	//part2
	@Override
	public ResultSet getEBooking(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT u.user_full_name, u.user_gender, u.user_birthday, u.user_email, u.user_id_number, u.user_phone_number, u.user_nationality,"
				+ " u.user_address, b.check_in_date, b.booking_notes, b.room_id, r.room_type, r.room_noBeds, b.booking_id, b.booking_status "
				+ " FROM tbluser u "
				+ "INNER JOIN  tblbooking b ON u.user_id = b.user_id "
				+ "INNER JOIN tblroom r ON b.room_id = r.room_id "
				+ "WHERE booking_id=?";
		return this.get(sql, id);
	}
}
