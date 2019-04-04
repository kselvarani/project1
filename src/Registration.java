

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

@WebServlet("/Registration")
public class Registration extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String mobile = request.getParameter("mobilenumber");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String clubs = request.getParameter("clubs");
		
		// validate given input
	
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			// loads mysql driver
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hrs"); // create new connection with test database
			
			String query="insert into STUDENT values(?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(query);  // generates sql query
			
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, mobile);
			ps.setInt(4, Integer.parseInt(age));
			ps.setString(5, gender);
			ps.setString(6, email);
			ps.setString(7, userid);
			ps.setString(8, password);
			ps.setString(9, clubs);
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

