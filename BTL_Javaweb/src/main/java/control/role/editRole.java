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
 * Servlet implementation class editRole
 */
@WebServlet("/editRole")
public class editRole extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editRole() {
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
        
		Role r=new RoleImpl();
		int id=Integer.parseInt(request.getParameter("role_id"));
		String name=request.getParameter("e_rolename");
		String[] pers = request.getParameterValues("e_options");
		String per = String.join(",", pers);
		
		if(name!=null && !name.equalsIgnoreCase("") && per!=null && !per.equalsIgnoreCase("")) {
			RoleObject rl=new RoleObject();
			rl.setRole_name(name);
			rl.setRole_permission(per);
			rl.setRole_id(id);
			
			boolean editResult=r.editRole(rl);
	        if (editResult) {
	            out.println("<script>alert('Sửa thông tin quyền thành công'); window.location.href='back/role.jsp';</script>");
	        } else {
	            out.println("<script>alert('Sửa thông tin quyền thất bại'); window.location.href='back/role.jsp';</script>");
	        }
		}else {
			out.println("<script>alert('Vui lòng điền vào các trường còn thiếu')</script>");
		}
		out.println("<script>window.history.back();</script>");
	}

}
