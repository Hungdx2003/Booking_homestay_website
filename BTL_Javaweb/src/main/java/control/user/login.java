package control.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ads.role.Role;
import ads.role.RoleImpl;
import ads.user.User;
import ads.user.UserImpl;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("user");
	    String password = request.getParameter("pass");
	    
	    User u=new UserImpl();
	    Role r=new RoleImpl();
	    ResultSet logUser=u.getUser(username, password);
	    response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
	        if(logUser!=null && logUser.next()) {
		    	HttpSession session = request.getSession();
		    	session.setAttribute("logUser", logUser);
				session.setAttribute("logUserId", logUser.getInt("user_id"));
			    ResultSet rl=r.getRole(logUser.getInt("role_id"));
				if (rl.next() && rl.getString("role_permission").contains("public")) {
					response.sendRedirect(request.getContextPath() +"/front/index.jsp");
				}else {
					session.setAttribute("logUserPer", rl.getString("role_permission"));
					response.sendRedirect(request.getContextPath() +"/back/dashboard.jsp");
				}
		    	
		    }else {
		    	out.println("<script>alert('Đăng nhập thất bại'); window.location.href='front/Login.jsp';</script>");
		    }
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
