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
 * Servlet implementation class addPayment
 */
@WebServlet("/addPayment")
public class addPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addPayment() {
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
		String date=request.getParameter("pay_date");
		int amount=Integer.parseInt(request.getParameter("amount"));
		
		PaymentObject rl=new PaymentObject();
		rl.setPay_date(date);
		rl.setAmount(amount);
		rl.setPay_method("Tiền mặt");
		rl.setStatus("Đã thanh toán");
		
		boolean addResult=r.addPayment(rl);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (addResult) {
            out.println("<script>alert('Thanh toán thành công'); window.location.href='back/payment.jsp';</script>");
        } else {
            out.println("<script>alert('Thanh toán thất bại'); window.location.href='back/payment.jsp';</script>");
        }
	}

}
