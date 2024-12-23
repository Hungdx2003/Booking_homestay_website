package control.payment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.PaymentObject;
import ads.payment.Payment;
import ads.payment.PaymentImpl;

/**
 * Servlet implementation class editPayment
 */
@WebServlet("/editPayment")
public class editPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editPayment() {
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
		Payment r=new PaymentImpl();
		int amount=Integer.parseInt(request.getParameter("amount"));
		int id=Integer.parseInt(request.getParameter("pay_id"));

		PaymentObject rl=new PaymentObject();
		rl.setPayment_id(id);
		rl.setAmount(amount);
		rl.setPay_method("Tiền mặt");
		rl.setStatus("Đã thanh toán");
		
		boolean editResult=r.editPayment(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Thanh toán thành công'); window.location.href='back/phongTra.jsp';</script>");
        } else {
            out.println("<script>alert('Thanh toán thất bại'); window.location.href='back/pphongTra.jsp';</script>");
        }
	}

}
