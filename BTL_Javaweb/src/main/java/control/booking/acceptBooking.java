package control.booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.booking.booking;
import ads.booking.bookingImpl;
import ads.objects.PaymentObject;
import ads.objects.bookingObject;
import ads.payment.Payment;
import ads.payment.PaymentImpl;

/**
 * Servlet implementation class acceptBooking
 */
@WebServlet("/acceptBooking")
public class acceptBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public acceptBooking() {
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
		booking r = new bookingImpl();
		String booking_id = request.getParameter("accept_booking_id");

		
		bookingObject bo = new bookingObject();
		bo.setBooking_id(Integer.parseInt(booking_id));
		bo.setBooking_status("Đã xác nhận");
		bo.setRoom_status("Đang sử dụng");
		
		boolean editResult = r.editBooking(bo);
		
		Payment p=new PaymentImpl();
		PaymentObject po=new PaymentObject();
		po.setBooking_id(Integer.parseInt(booking_id));
		po.setStatus("Chưa thanh toán");
		boolean result=p.addPayment(po);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Phòng đã được xác nhận'); window.location.href='back/QLDonDat.jsp';</script>");
        } else {
            out.println("<script>alert('Xác nhận phòng thất bại'); window.location.href='back/QLDonDat.jsp';</script>");
        }
	}

}
