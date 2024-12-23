package control.room;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.objects.roomObject;
import ads.room.room;
import ads.room.roomImpl;

/**
 * Servlet implementation class editRoom
 */
@WebServlet("/editRoom")
public class editRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editRoom() {
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
		String room_id=request.getParameter("room_id");
		String room_type=request.getParameter("e_room_type");
		String room_noBeds=request.getParameter("e_room_noBeds");
		String room_maxCapacity=request.getParameter("e_room_maxCapacity");
		String room_name=request.getParameter("e_room_name");
		
		roomObject ro = new roomObject();
		ro.setRoom_id(Integer.parseInt(room_id));
		ro.setRoom_type(room_type);
		ro.setRoom_noBeds(room_noBeds);
		ro.setRoom_maxCapacity(Integer.parseInt(room_maxCapacity));
		ro.setRoom_name(room_name);
		ro.setRoom_status("Phòng trống");
		
		
		boolean editResult = r.editRoom(ro);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Sửa phòng thành công'); window.location.href='back/QLPhong.jsp';</script>");
        } else {
            out.println("<script>alert('Sửa phòng thất bại'); window.location.href='back/QLPhong.jsp';</script>");
        }
	}

}
