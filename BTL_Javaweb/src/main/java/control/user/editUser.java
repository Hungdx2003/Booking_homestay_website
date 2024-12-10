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
 * Servlet implementation class editUser
 */
@WebServlet("/editUser")
public class editUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editUser() {
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
		String id=request.getParameter("user_id");
		String pass=request.getParameter("e_password");
		String email=request.getParameter("e_email");
		String fname=request.getParameter("e_fullname");
		String gender=request.getParameter("e_gender");
		String role=request.getParameter("e_role");
		
		UserObject uo=new UserObject();
		uo.setUser_password(pass);
		uo.setUser_email(email);
		uo.setUser_full_name(fname);
		uo.setUser_is_active(true);
		uo.setRole_id(Integer.parseInt(role));
		uo.setUser_gender(gender);
		uo.setUser_id(Integer.parseInt(id));
		
		boolean editResult=u.editUser(uo);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (editResult) {
            // Thêm thành công
            out.println("<script>alert('Sửa thông tin người dùng thành công'); window.location.href='back/User.jsp';</script>");
        } else {
            // Thêm thất bại
            out.println("<script>alert('Sửa thông tin người dùng thất bại'); window.location.href='back/User.jsp';</script>");
        }
	}

}
