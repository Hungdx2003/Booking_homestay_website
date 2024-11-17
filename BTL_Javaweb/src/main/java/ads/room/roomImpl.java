package ads.room;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.basic.basicImpl;
import ads.object.roomObject;

public class roomImpl extends basicImpl implements room {

	public roomImpl() {
		super("Room");
	}
	
	@Override
	public boolean addRoom(roomObject item) {
		// TODO Auto-generated method stub
				StringBuilder sql=new StringBuilder();
				sql.append("INSERT INTO tblroom(");
				sql.append("room_name, room_type, room_noBeds, room_description, room_price, room_status, room_created_at,room_updated_at) ");
				sql.append("VALUES(?,?,?,?,?,?,?,?)");
		        try {
		            PreparedStatement pre = this.con.prepareStatement(sql.toString());
		            pre.setString(1, item.getRoom_name());
					pre.setString(2, item.getRoom_type());
					pre.setString(3, item.getRoom_noBeds());
					pre.setString(4, item.getRoom_description());
					pre.setInt(5, item.getRoom_price());
					pre.setString(6, item.getRoom_status());
					pre.setString(7, item.getRoom_created_at());
					pre.setString(8, item.getRoom_updated_at());
		            return this.add(pre);  
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
				return false;
	}

	@Override
	public boolean editRoom(roomObject item) {
		// TODO Auto-generated method stub
				StringBuilder sql=new StringBuilder();
				sql.append("UPDATE tblroom SET ");
				sql.append("room_name = ?, room_type = ?, room_noBeds = ?, room_description = ?, room_price = ?, room_status = ?, room_created_at = ?,room_updated_at = ? ");
				sql.append("WHERE room_id=?");
		        try{
		        	PreparedStatement pre = this.con.prepareStatement(sql.toString());
		        	pre.setString(1, item.getRoom_name());
					pre.setString(2, item.getRoom_type());
					pre.setString(3, item.getRoom_noBeds());
					pre.setString(4, item.getRoom_description());
					pre.setInt(5, item.getRoom_price());
					pre.setString(6, item.getRoom_status());
					pre.setString(7, item.getRoom_created_at());
					pre.setString(8, item.getRoom_updated_at());
		            return this.edit(pre);
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
				return false;
	}

	@Override
	public boolean delRoom(roomObject item) {
		// TODO Auto-generated method stub
				 String sql = "DELETE FROM tblroom WHERE room_id=?";
			        try (PreparedStatement pre = this.con.prepareStatement(sql)) {
			            pre.setInt(1, item.getRoom_id());
			            return this.del(pre);
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
				return false;
	}

	@Override
	public ArrayList<ResultSet> getRoom(String multiSelect) {
		// TODO Auto-generated method stub
				if (multiSelect!=null && !"".equalsIgnoreCase(multiSelect)) {
					return this.gets(multiSelect);
				}else {
					StringBuilder sql= new StringBuilder();
					sql.append("SELECT * FROM tblroom ");
					sql.append("");
					sql.append("ORDER BY room_id DESC ");
					sql.append("LIMIT 10;");
					return this.gets(sql.toString());
				}
	}

	@Override
	public ArrayList<ResultSet> getRoom(roomObject similar, int at, byte total) {
		// TODO Auto-generated method stub
				StringBuilder sql= new StringBuilder();
				sql.append("SELECT * FROM tblroom ");
				sql.append("");
				sql.append("ORDER BY room_id DESC ");
				sql.append("LIMIT ").append(at).append(", ").append(total).append(";");
				
				
				return this.gets(sql.toString());
	}

	@Override
	public ResultSet getRoom(int id) {
		// TODO Auto-generated method stub
				String sql="SELECT * FROM tblroom WHERE room_id=?";
				return this.get(sql, id);
	}

	

}
