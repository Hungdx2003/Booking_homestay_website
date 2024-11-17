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
		sql.append("role_name, role_description, create_by, role_created_at, role_updated_at) ");
		sql.append("VALUES(?,?,?,?,?)");
        try {
            PreparedStatement pre = this.con.prepareStatement(sql.toString());
            pre.setString(1, item.getRole_name());
			pre.setString(2, item.getRole_description());
			pre.setInt(3, item.getCreate_by());
			pre.setString(4, item.getRole_created_at());
			pre.setString(5, item.getRole_updated_at());
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
		sql.append("role_name=?, role_description=?, create_by=?, role_created_at=?, role_updated_at=? ");
		sql.append("WHERE role_id=?");
		try{
        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
        	pre.setString(1, item.getRole_name());
			pre.setString(2, item.getRole_description());
			pre.setInt(3, item.getCreate_by());
			pre.setString(4, item.getRole_created_at());
			pre.setString(5, item.getRole_updated_at());
			pre.setInt(6, item.getRole_id());
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
		sql.append("ORDER BY user_id DESC ");
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
