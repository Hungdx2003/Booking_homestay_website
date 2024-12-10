package control.role;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import ads.role.Role;
import ads.role.RoleImpl;

/**
 * Servlet implementation class getRoleById
 */
@WebServlet("/getRoleById")
public class getRoleById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getRoleById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int roleId = Integer.parseInt(request.getParameter("roleId"));
		Role r=new RoleImpl();
		ResultSet rs=r.getRole(roleId);
		try {
            if (rs != null && rs.next()) {
                String name = rs.getString("role_name");
                String permission = rs.getString("role_permission");

                JSONObject userDetails = new JSONObject();
                userDetails.put("name", name);
                userDetails.put("permission", permission);
      
                response.setCharacterEncoding("UTF-8");
                response.setContentType("application/json; charset=UTF-8");
                response.getWriter().write(userDetails.toString());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
