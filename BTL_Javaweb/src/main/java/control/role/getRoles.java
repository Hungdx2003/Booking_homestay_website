package control.role;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import ads.role.*;


/**
 * Servlet implementation class getRoles
 */
@WebServlet("/getRoles")
public class getRoles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getRoles() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        Role rl = new RoleImpl();
        ArrayList<ResultSet> roles = rl.getRole(null, 0, (byte)3);
        JSONArray jsonArray = new JSONArray();
        try {
            for (ResultSet rs : roles) {
                while (rs.next()) {
                	JSONObject jsonRole = new JSONObject();
                    jsonRole.put("id", rs.getInt("role_id"));
                    jsonRole.put("name", rs.getString("role_name"));
                    jsonArray.put(jsonRole);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.write(jsonArray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
