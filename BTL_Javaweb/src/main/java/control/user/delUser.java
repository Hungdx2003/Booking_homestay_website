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
 * Servlet implementation class delUser
 */
@WebServlet("/delUser")
public class delUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delUser() {
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
		
		String id=request.getParameter("user_id_del");
		
		UserObject uo=new UserObject();
		uo.setUser_id(Integer.parseInt(id));
		User u=new UserImpl();
		boolean delUser=u.delUser(uo);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		if (delUser) {
			out.print("<script>alert('Xóa người dùng thành công'); window.location.href='back/User.jsp';</script>");
		} else {
			out.print("<script>alert('Xóa người dùng không thành công'); window.location.href='back/User.jsp';</script>");
		}
	}

}
