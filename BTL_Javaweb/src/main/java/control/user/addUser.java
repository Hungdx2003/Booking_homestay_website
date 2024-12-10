package control.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.UserObject;
import ads.user.*;

/**
 * Servlet implementation class addUser
 */
@WebServlet("/addUser")
public class addUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addUser() {
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
		request.setCharacterEncoding("UTF-8");
		User u=new UserImpl();
		String username=request.getParameter("username");
		String pass=request.getParameter("password");
		String email=request.getParameter("email");
		String fname=request.getParameter("fullname");
		String gender=request.getParameter("gender");
		String role=request.getParameter("role");
		
		UserObject uo=new UserObject();
		uo.setUser_name(username);
		uo.setUser_password(pass);
		uo.setUser_email(email);
		uo.setUser_full_name(fname);
		uo.setUser_gender(gender);
		uo.setUser_is_active(true);
		uo.setRole_id(Integer.parseInt(role));
		
		boolean addResult=u.addUser(uo);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (addResult) {
            out.println("<script>alert('Thêm người dùng thành công'); window.location.href='back/User.jsp';</script>");
        } else {
            out.println("<script>alert('Thêm người dùng thất bại'); window.location.href='back/User.jsp';</script>");
        }
	}

}
