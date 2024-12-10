package control.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.UserObject;
import ads.user.User;
import ads.user.UserImpl;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		String username = request.getParameter("s_user");
	    String password = request.getParameter("s_pass");
	    String email=request.getParameter("s_email");
		String fname=request.getParameter("s_fullname");
		
		UserObject uo=new UserObject();
		uo.setUser_name(username);
		uo.setUser_password(password);
		uo.setUser_email(email);
		uo.setUser_full_name(fname);
		uo.setUser_is_active(true);
		uo.setRole_id(3);
		
		boolean r=u.addUser(uo);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (r) {
            out.println("<script>alert('Đăng ký thành công'); window.location.href='front/Login.jsp';</script>");
        } else {
            out.println("<script>alert('Đăng ký thất bại'); window.location.href='front/Login.jsp';</script>");
        }
	}

}
