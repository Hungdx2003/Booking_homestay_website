package ads.role;

import java.sql.*;
import java.util.*;

import ads.basic.BasicImpl;
import ads.objects.RoleObject;

public class RoleImpl extends BasicImpl implements Role {
	public RoleImpl() {
		super("Role");
	}
	
	@Override
	public boolean addRole(RoleObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("INSERT INTO tblrole(");
		sql.append("role_name, role_description, role_permission, create_by) ");
		sql.append("VALUES(?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setString(1, item.getRole_name());
			pre.setString(2, item.getRole_description());
			pre.setString(3, item.getRole_permission());
			pre.setInt(4, item.getCreate_by());
            return this.add(pre);  
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean editRole(RoleObject item) {
		// TODO Auto-generated method stub
		StringBuilder sql=new StringBuilder();
		sql.append("UPDATE tblrole SET ");
		sql.append("role_name=?, role_description=?, role_permission=?, create_by=? ");
		sql.append("WHERE role_id=?");
		try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setString(1, item.getRole_name());
			pre.setString(2, item.getRole_description());
			pre.setString(3, item.getRole_permission());
			pre.setInt(4, item.getCreate_by());
			pre.setInt(5, item.getRole_id()); 
            return this.edit(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public boolean delRole(RoleObject item) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM tblrole WHERE role_id=?";
        try {
        	PreparedStatement pre = this.con.prepareStatement(sql);
        	pre.setInt(1, item.getRole_id());
            return this.del(pre);
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return false;
	}

	@Override
	public ArrayList<ResultSet> getRole(RoleObject similar, int at, byte total) {
		// TODO Auto-generated method stub
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT * FROM tblrole ");
		sql.append("");
		sql.append("ORDER BY role_id DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
		
		return this.gets(sql.toString());
	}

	@Override
	public ResultSet getRole(int id) {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tblrole WHERE role_id=?";
		return this.get(sql, id);
	}
	
}
