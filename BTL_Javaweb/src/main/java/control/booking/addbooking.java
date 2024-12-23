package control.booking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.valves.rewrite.InternalRewriteMap.LowerCase;

import ads.objects.*;
import ads.booking.*;

/**
 * Servlet implementation class addbooking
 */
@WebServlet("/addbooking")
public class addbooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addbooking() {
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
		request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    PrintWriter out = response.getWriter();
	    
	    booking u = new bookingImpl();
	    String userId = request.getParameter("user_id");
	    String ck_in = request.getParameter("ck_in");
	    String ck_out = request.getParameter("ck_out");
	    String room_type = request.getParameter("room_type");
	    String bed = request.getParameter("bed");
	    
	    if (!userId.equalsIgnoreCase("") && !ck_in.equalsIgnoreCase("") && !ck_out.equalsIgnoreCase("") &&
	        !room_type.equalsIgnoreCase("") && !bed.equalsIgnoreCase("") && userId != null &&
	        ck_in != null && ck_out != null && room_type != null) {
	        
	        bookingObject bo = new bookingObject();
	        bo.setUser_id(Integer.parseInt(userId));
	        bo.setCheck_in_date(ck_in);
	        bo.setCheck_out_date(ck_out);
	        bo.setRoom_type(room_type);
	        bo.setRoom_noBeds(bed);
	        bo.setBooking_status("Chờ xác nhận");
	        
	        String addResult = u.addBooking(bo);
	        switch (addResult) {
	            case "success":
	                out.println("<script>alert('Đặt phòng thành công'); window.location.href='front/index.jsp';</script>");
	                break;
	            case "no_rooms":
	            	out.println("<script>");
	                out.println("alert('Hết "+room_type+" giường "+ bed +". ');");
	                out.println("</script>");
	                break;
	            case "error":
	                out.println("<script>alert('Có lỗi xảy ra khi đặt phòng.'); window.location.href='front/index.jsp';</script>");
	                break;
	            case "exception":
	                out.println("<script>alert('Có lỗi trong hệ thống. Vui lòng thử lại sau.'); window.location.href='front/index.jsp';</script>");
	                break;
	        }
	    } else {
	        out.println("<script>alert('Vui lòng điền vào các trường còn thiếu')</script>");
	    }
	    out.println("<script>window.history.back();</script>");
	}

}
