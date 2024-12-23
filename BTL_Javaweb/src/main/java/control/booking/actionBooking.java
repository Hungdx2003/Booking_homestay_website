package control.booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.bookingObject;
import ads.booking.*;

/**
 * Servlet implementation class actionBooking
 */
@WebServlet("/actionBooking")
public class actionBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public actionBooking() {
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
		String booking_id = request.getParameter("booking_id");
		String check_in_date=request.getParameter("check_in_date");
		String booking_notes=request.getParameter("booking_notes");
		String booking_status=request.getParameter("booking_status");
		
		bookingObject bo = new bookingObject();
		bo.setBooking_id(Integer.parseInt(booking_id));
		bo.setCheck_in_date(check_in_date);
		bo.setBooking_notes(booking_notes);
		bo.setBooking_status(booking_status);
		
	}

}
