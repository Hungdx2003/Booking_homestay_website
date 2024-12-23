package control.contact;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.ContactObject;
import ads.contact.Contact;
import ads.contact.ContactImpl;

/**
 * Servlet implementation class editContact
 */
@WebServlet("/editContact")
public class editContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editContact() {
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
		Contact r=new ContactImpl();
		int id=Integer.parseInt(request.getParameter("contact_id"));
		String name=request.getParameter("e_contactname");
		String phone=request.getParameter("e_contactphone");
		String email=request.getParameter("e_contactemail");
		
		ContactObject rl=new ContactObject();
		rl.setFull_name(name);
		rl.setPhone(phone);
		rl.setEmail(email);
		rl.setContact_id(id);
		
		boolean editResult=r.editContact(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Sửa thông tin liên hệ thành công'); window.location.href='back/contact.jsp';</script>");
        } else {
            out.println("<script>alert('Sửa thông tin liên hệ thất bại'); window.location.href='back/contact.jsp';</script>");
        }
	}

}
