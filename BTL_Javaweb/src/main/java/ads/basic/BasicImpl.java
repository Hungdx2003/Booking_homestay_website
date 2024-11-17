package ads.basic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ads.ConnectionPool;
import ads.ConnectionPoolImpl;

public class BasicImpl implements Basic {
	private String objectName;
	private ConnectionPool cp= ConnectionPoolImpl.getInstance();
	protected Connection con;
	
	public BasicImpl(String objectName) {
		this.objectName=objectName;
		
		try {
			this.con=this.cp.getConnection(this.objectName);
			
			if (this.con.getAutoCommit()) {
				this.con.setAutoCommit(false);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private boolean exe(PreparedStatement pre) {
		if (pre!=null) {

			try {
				int result=pre.executeUpdate();
				if (result==0) {
					this.con.rollback();
					return false;
				}
				
				this.con.commit();
				return true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				try {
					this.con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			
		}
		return false;
	}
	
	@Override
	public boolean add(PreparedStatement pre) {
		// TODO Auto-generated method stub
		return this.exe(pre);
	}

	@Override
	public boolean edit(PreparedStatement pre) {
		// TODO Auto-generated method stub
		return this.exe(pre);
	}

	@Override
	public boolean del(PreparedStatement pre) {
		// TODO Auto-generated method stub
		return this.exe(pre);
	}

	@Override
	public ArrayList<ResultSet> gets(String multiSelect) {
		// TODO Auto-generated method stub
		ArrayList<ResultSet> res=new ArrayList<>();
		try {
			PreparedStatement stmt=this.con.prepareStatement(multiSelect);
			boolean results=stmt.execute();
			if (results) {
				res.add(stmt.getResultSet());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public ResultSet get(String sql, int value) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement pre=this.con.prepareStatement(sql);
			if (value>0) {
				pre.setInt(1, value);
			}
			return pre.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public ResultSet get(String sql, String name, String pass) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement pre=this.con.prepareStatement(sql);
			pre.setString(1, name);
			pre.setString(2, pass);
			
			return pre.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void releaseConnection() {
		// TODO Auto-generated method stub
		try {
			this.cp.releaseConnection(this.con, this.objectName);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
