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
 * Servlet implementation class addContact
 */
@WebServlet("/addContact")
public class addContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addContact() {
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
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		
		ContactObject rl=new ContactObject();
		rl.setFull_name(name);
		rl.setPhone(phone);
		rl.setEmail(email);
		
		boolean addResult=r.addContact(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (addResult) {
            out.println("<script>alert('Thêm thành công'); window.location.href='front/index.jsp';</script>");
        } else {
            out.println("<script>alert('Thêm thất bại'); window.location.href='front/index.jsp';</script>");
        }
	}

}
