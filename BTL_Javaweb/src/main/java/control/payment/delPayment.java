package control.payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.object.PaymentObject;
import ads.payment.Payment;
import ads.payment.PaymentImpl;

/**
 * Servlet implementation class delPayment
 */
@WebServlet("/delPayment")
public class delPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delPayment() {
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
		PaymentObject ro=new PaymentObject();
		ro.setPayment_id(id);
		
		Payment rl=new PaymentImpl();
		boolean delResult=rl.delPayment(ro);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (delResult) {
            out.println("<script>alert('Xóa quyền thành công'); window.location.href='back/payment.jsp';</script>");
        } else {
            out.println("<script>alert('Xóa quyền thất bại'); window.location.href='back/payment.jsp';</script>");
        }
	}

}
