package control.room;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.object.roomObject;
import ads.room.*;

/**
 * Servlet implementation class addRoom
 */
@WebServlet("/addRoom")
public class addRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRoom() {
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
		room r = new roomImpl();
		String room_name=request.getParameter("room_name");
		String room_type=request.getParameter("room_type");
		String room_noBeds=request.getParameter("room_noBeds");
		//String room_status=request.getParameter("room_status");
		
		roomObject ro = new roomObject();
		ro.setRoom_name(room_name);
		ro.setRoom_type(room_type);
		ro.setRoom_noBeds(room_noBeds);
		//ro.setRoom_description("");)
		ro.setRoom_status("Còn trống");
		ro.setRoom_maxCapacity(4);
		
		boolean addResult = r.addRoom(ro);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        if (addResult) {
            out.println("<script>alert('Thêm phòng thành công'); window.location.href='back/QLPhong.jsp';</script>");
        } else {
            out.println("<script>alert('Thêm phòng thất bại'); window.location.href='back/QLPhong.jsp';</script>");
        }
	}

}
