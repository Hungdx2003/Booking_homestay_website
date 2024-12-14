package control.room;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ads.object.roomObject;
import ads.room.room;
import ads.room.roomImpl;

/**
 * Servlet implementation class deleteRoom
 */
@WebServlet("/deleteRoom")
public class deleteRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteRoom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		room r = new roomImpl();
		String room_id=request.getParameter("del_room_id");
		
		
		roomObject ro = new roomObject();
		ro.setRoom_id(Integer.parseInt(room_id));
	
		
		
		boolean editResult = r.delRoom(ro);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        if (editResult) {
            out.println("<script>alert('Xoá phòng thành công'); window.location.href='back/QLPhong.jsp';</script>");
        } else {
            out.println("<script>alert('Xoá phòng thất bại'); window.location.href='back/QLPhong.jsp';</script>");
        }
	}

}
