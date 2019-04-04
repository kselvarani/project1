


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("userid");
		String pw=request.getParameter("password");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		 // loads driver
		Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hrs"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select userid,password from student where userid=? and password=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("afterlogin.jsp");
			return;
		}
		response.sendRedirect("error.html");
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
