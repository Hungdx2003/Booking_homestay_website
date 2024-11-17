package ads.contact;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.basic.BasicImpl;
import ads.object.ContactObject;

public class ContactImpl implements Contact {
	
	public ContactImpl() {
		super("Contact");
	}
	
	@Override
	public boolean addContact(ContactObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblContact(");
		sql.append("contact_id, full_name, phone, email, contact_date, response_by, status) ");
		sql.append("VALUES(?,?,?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setInt(1, item.getContact_id());
			pre.setString(2, item.getFull_name());
			pre.setString(3, item.getPhone());
			pre.setString(4, item.getEmail());
			pre.setString(5, item.getContact_date());
			pre.setString(6, item.getResponse_by());
			pre.setString(7, item.getStatus());
            return this.add(pre);  
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean editContact(ContactObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tblContact SET ");
		sql.append("contact_id = ?, full_name = ?, phone  = ?, email  = ?, contact_date  = ?, response_by  = ?, status  = ?) ");
		sql.append("WHERE room_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setInt(1, item.getContact_id());
			pre.setString(2, item.getFull_name());
			pre.setString(3, item.getPhone());
			pre.setString(4, item.getEmail());
			pre.setString(5, item.getContact_date());
			pre.setString(6, item.getResponse_by());
			pre.setString(7, item.getStatus());
            return this.edit(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean delContact(ContactObject item) {
		// TODO Auto-generated method stub
		 String sql = "DELETE FROM tblContact WHERE Contact_id=?";
	        try (PreparedStatement pre = this.con.prepareStatement(sql)) {
	            pre.setInt(1, item.getContact_id());
	            return this.del(pre);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
		return false;
	}

	@Override
	public ArrayList<ResultSet> getContact(String multiSelect) {
		// TODO Auto-generated method stub
		if (multiSelect!=null && !"".equalsIgnoreCase(multiSelect)) {
			return this.gets(multiSelect);
		}else {
			StringBuilder sql= new StringBuilder();
			sql.append("SELECT * FROM tblContact ");
			sql.append("");
			sql.append("ORDER BY Contact_id DESC ");
			sql.append("LIMIT 10;");
			return this.gets(sql.toString());
		}
	}

	@Override
	public ArrayList<ResultSet> getContact(ContactObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT * FROM tblContact ");
		sql.append("");
		sql.append("ORDER BY Contact_id DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
		
		
		return this.gets(sql.toString());
	}

	@Override
	public ResultSet getContact(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tblContact WHERE Contact_id=?";
		return this.get(sql, id);
	}

	@Override
	public ResultSet getContact(String Contactname, String Contactpass) {
		// TODO Auto-generated method stub
		return null;
	}
}
