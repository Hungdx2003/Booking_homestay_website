package ads.contact;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.basic.*;
import ads.objects.*;

public class ContactImpl extends BasicImpl implements Contact{
	
	public ContactImpl() {
		super("Contact");
	}
	
	@Override
	public boolean addContact(ContactObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblContact(");
		sql.append("full_name, phone, email, response_by, status) ");
		sql.append("VALUES(?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
			pre.setString(1, item.getFull_name());
			pre.setString(2, item.getPhone());
			pre.setString(3, item.getEmail());
			pre.setString(4, item.getResponse_by());
			pre.setString(5, item.getStatus());
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
		sql.append("status  = ? ");
		sql.append("WHERE contact_id=?");
        try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
			pre.setString(1, item.getStatus());
			pre.setInt(2, item.getContact_id());
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

}
