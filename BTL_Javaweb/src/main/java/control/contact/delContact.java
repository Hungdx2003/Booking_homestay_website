package control.contact;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.object.ContactObject;
import ads.contact.Contact;
import ads.contact.ContactImpl;

/**
 * Servlet implementation class delContact
 */
@WebServlet("/delContact")
public class delContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delContact() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		
		int id=Integer.parseInt(request.getParameter("contact_id_del"));
		ContactObject ro=new ContactObject();
		ro.setContact_id(id);
		
		Contact rl=new ContactImpl();
		boolean delResult=rl.delContact(ro);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (delResult) {
            out.println("<script>alert('Xóa thành công'); window.location.href='back/contact.jsp';</script>");
        } else {
            out.println("<script>alert('Xóa thất bại'); window.location.href='back/contact.jsp';</script>");
        }
	}

}
