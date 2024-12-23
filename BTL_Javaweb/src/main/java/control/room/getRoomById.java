package control.room;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import ads.room.*;


/**
 * Servlet implementation class getRoomById
 */
@WebServlet("/getRoomById")
public class getRoomById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getRoomById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		int room = Integer.parseInt(request.getParameter("room"));
        room r = new roomImpl();
        ResultSet rs = r.getRoom(room);
        try {
            if (rs != null && rs.next()) {
                String room_type = rs.getString("room_type");
                String room_noBeds = rs.getString("room_noBeds");
                String room_name = rs.getString("room_name");
                String room_maxCapacity = rs.getString("room_maxCapacity");

                JSONObject userDetails = new JSONObject();
                userDetails.put("room_type", room_type);
                userDetails.put("room_noBeds", room_noBeds);
                userDetails.put("room_name", room_name);
                userDetails.put("room_maxCapacity", room_maxCapacity);

                response.setCharacterEncoding("UTF-8");
                response.setContentType("application/json; charset=UTF-8");
                response.getWriter().write(userDetails.toString());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
