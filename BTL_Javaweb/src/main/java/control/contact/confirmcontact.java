package control.contact;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.contact.Contact;
import ads.contact.ContactImpl;
import ads.objects.ContactObject;

/**
 * Servlet implementation class confirmcontact
 */
@WebServlet("/confirmcontact")
public class confirmcontact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public confirmcontact() {
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
		
		ContactObject rl=new ContactObject();
		rl.setStatus("Cho phép");
		rl.setContact_id(id);
		
		boolean editResult=r.editContact(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Xác nhận thành công'); window.location.href='back/thuTinTuc.jsp';</script>");
        } else {
            out.println("<script>alert('Xác nhận thất bại'); window.location.href='back/thuTinTuc.jsp';</script>");
        }
	}

}
