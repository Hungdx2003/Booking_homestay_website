package control.role;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.RoleObject;
import ads.role.Role;
import ads.role.RoleImpl;

/**
 * Servlet implementation class delRole
 */
@WebServlet("/delRole")
public class delRole extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delRole() {
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
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
		
		String id=request.getParameter("role_id_del");
		
		if(id!=null && !id.equalsIgnoreCase("")) {
			RoleObject ro=new RoleObject();
			ro.setRole_id(Integer.parseInt(id));
			
			Role rl=new RoleImpl();
			boolean delResult=rl.delRole(ro);
	        if (delResult) {
	            out.println("<script>alert('Xóa quyền thành công'); window.location.href='back/role.jsp';</script>");
	        } else {
	            out.println("<script>alert('Xóa quyền thất bại'); window.location.href='back/role.jsp';</script>");
	        }
		}
	}

}
