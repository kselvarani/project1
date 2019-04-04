

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */

@WebServlet("/AdminEvent")
public class AdminEvent extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String eventname = request.getParameter("eventname");
		String eventid = request.getParameter("eventid");
		String eventdate = request.getParameter("eventdate");
		String eventdes = request.getParameter("eventdescription");
		
		
		// validate given input
	
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			// loads mysql driver
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hrs"); // create new connection with test database
			
			String query="insert into EVENT values(?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(query);  // generates sql query
			
			ps.setString(1, eventname);
			ps.setString(2, eventid);
			ps.setString(3, eventdate);
			ps.setString(4, eventdes);
			ps.executeUpdate(); // execute it on test database
			System.out.println("successfuly inserted");
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			RequestDispatcher rd = request.getRequestDispatcher("success.html");
			rd.forward(request, response);
		}
	}

