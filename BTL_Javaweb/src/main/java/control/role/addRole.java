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
 * Servlet implementation class addRole
 */
@WebServlet("/addRole")
public class addRole extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRole() {
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
		Role r=new RoleImpl();
		String name=request.getParameter("rolename");
		String[] pers = request.getParameterValues("options");
		String per = String.join(",", pers);
		
		RoleObject rl=new RoleObject();
		rl.setRole_name(name);
		rl.setRole_permission(per);
		
		boolean addResult=r.addRole(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (addResult) {
            out.println("<script>alert('Thêm quyền thành công'); window.location.href='back/role.jsp';</script>");
        } else {
            out.println("<script>alert('Thêm quyền thất bại'); window.location.href='back/role.jsp';</script>");
        }

	}

}