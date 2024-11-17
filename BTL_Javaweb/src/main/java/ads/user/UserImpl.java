package ads.user;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.basic.BasicImpl;
import ads.objects.UserObject;

public class UserImpl extends BasicImpl implements User {
	public UserImpl() {
		super("User");
	}
	
	@Override
	public boolean addUser(UserObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tbluser(");
		sql.append("user_name, user_password, user_full_name, ");
		sql.append("user_gender, user_birthday, user_id_number, user_email, ");
		sql.append("user_phone_number, user_nationality, user_address, role_id, ");
		sql.append("user_is_active, user_created_at, user_updated_at)");
		sql.append("VALUES(?,md5(?),?,?,?,?,?,?,?,?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setString(1, item.getUser_name());
			pre.setString(2, item.getUser_password());
			pre.setString(3, item.getUser_full_name());
			pre.setString(4, item.getUser_gender());
			pre.setString(5, item.getUser_birthday());
			pre.setString(6, item.getUser_id_number());
			pre.setString(7, item.getUser_email());
			pre.setString(8, item.getUser_phone_number());
			pre.setString(9, item.getUser_nationality());
			pre.setString(10, item.getUser_address());
			pre.setInt(11, item.getRole_id());
			pre.setBoolean(12, item.getUser_is_active());
			pre.setString(13, item.getUser_created_at());
			pre.setString(14, item.getUser_updated_at());
            return this.add(pre);  
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean editUser(UserObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tbluser SET ");
		sql.append("user_password=md5(?), user_full_name=?, ");
		sql.append("user_gender=?, user_birthday=?, user_id_number=?, user_email=?, ");
		sql.append("user_phone_number=?, user_nationality=?, user_address=?, role_id=?, ");
		sql.append("user_is_active=?, user_created_at=?, user_updated_at=? ");
		sql.append("WHERE user_id=?");
		try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
			pre.setString(1, item.getUser_password());
			pre.setString(2, item.getUser_full_name());
			pre.setString(3, item.getUser_gender());
			pre.setString(4, item.getUser_birthday());
			pre.setString(5, item.getUser_id_number());
			pre.setString(6, item.getUser_email());
			pre.setString(7, item.getUser_phone_number());
			pre.setString(8, item.getUser_nationality());
			pre.setString(9, item.getUser_address());
			pre.setInt(10, item.getRole_id());
			pre.setBoolean(11, item.getUser_is_active());
			pre.setString(12, item.getUser_created_at());
			pre.setString(13, item.getUser_updated_at());
			pre.setInt(14, item.getUser_id());
            return this.edit(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean delUser(UserObject item) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM tbluser WHERE user_id=?";
        try {
        	PreparedStatement pre = this.con.prepareStatement(sql);
        	pre.setInt(1, item.getUser_id());
            return this.del(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}

	@Override
	public ArrayList<ResultSet> getUser(UserObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT * FROM tbluser ");
		sql.append("");
		sql.append("ORDER BY user_id DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
		
		return this.gets(sql.toString());
	}

	@Override
	public ResultSet getUser(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tbluser WHERE user_id=?";
		return this.get(sql, id);
	}

	@Override
	public ResultSet getUser(String username, String userpass) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tbluser WHERE (user_name=?) AND (user_pass=?)";
		return this.get(sql, username, userpass);
	}
	
	public static void main(String[] args) {
		User u=new UserImpl();
		
		UserObject nItem=new UserObject();
		nItem.setUser_name("java");
		nItem.setUser_email("hungdx@haui.edu.vn");
		nItem.setUser_full_name("Dinh Xuan Hung Java");
		nItem.setUser_password("12345");
		nItem.setUser_is_active(true);
		nItem.setUser_id_number("01568813551");
		nItem.setRole_id(2);
		nItem.setUser_id(92);
        
//        boolean isAdded = u.addUser( nItem);
//        System.out.println(isAdded ? "User added successfully." : "Failed to add user.");
        
//        boolean isEdited = u.editUser(nItem);
//        System.out.println(isEdited ? "User edited successfully." : "Failed to edit user.");
  
        boolean isDeleted = u.delUser(nItem);
        System.out.println(isDeleted ? "User deleted successfully." : "Failed to delete user.");
        
		ArrayList<ResultSet> res=u.getUser(null, 0, (byte)15);
		
		ResultSet rs=res.get(0);
			String row="";
			try {
				while(rs.next()) {
					row+="ID: "+rs.getInt("user_id");
					row+="\tNAME: "+rs.getString("user_name");
					row+="\tFULLNAME: "+rs.getString("user_full_name");
					row+="\tPASS: "+rs.getString("user_password");
					row+="\tID NUMBER: "+rs.getString("user_id_number")+"\n";
				}
				System.out.println(row);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
