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
import ads.objects.bookingObject;

/**
 * Servlet implementation class cancelBooking
 */
@WebServlet("/cancelBooking")
public class cancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cancelBooking() {
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
		String booking_id = request.getParameter("cancelBooking_id");
		String reason = request.getParameter("deleteReason");
		
		bookingObject bo = new bookingObject();
		bo.setBooking_id(Integer.parseInt(booking_id));
		bo.setReason_cancel(reason);
		bo.setBooking_status("Đã huỷ");
		
		boolean editResult = r.editBooking(bo);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Hủy đặt phòng thành công'); window.location.href='back/QLDonDat.jsp';</script>");
        } else {
            out.println("<script>alert('Huỷ đặt phòng thất bại'); window.location.href='back/QLDonDat.jsp';</script>");
        }
	}

}
