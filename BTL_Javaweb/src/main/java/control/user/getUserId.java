package control.user;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import ads.user.*;

/**
 * Servlet implementation class getUserId
 */
@WebServlet("/getUserId")
public class getUserId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getUserId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		int userId = Integer.parseInt(request.getParameter("userId"));
        User u = new UserImpl();
        ResultSet rs = u.getUser(userId);
        try {
            if (rs != null && rs.next()) {
                String username = rs.getString("user_name");
                String password = rs.getString("user_password");
                String fullname = rs.getString("user_full_name");
                String email = rs.getString("user_email");
                String gender=rs.getString("user_gender");
                int role=rs.getInt("role_id");

                JSONObject userDetails = new JSONObject();
                userDetails.put("username", username);
                userDetails.put("password", password);
                userDetails.put("fullname", fullname);
                userDetails.put("email", email);
                userDetails.put("gender", gender);
                userDetails.put("role", role);

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
