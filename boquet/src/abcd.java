
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pkg.*;
/**
 * Servlet implementation class abcd
 */
@WebServlet(value="/abcd")
public class abcd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreparedStatement stmt=null;	
		Connection conn=helper.getConnection();
		response.setContentType("text/html");
		 PrintWriter pwriter = response.getWriter();
		 String firstname=request.getParameter("firstname");
		 String lastname=request.getParameter("lastname");
		 String country=request.getParameter("country");
		 String subject=request.getParameter("subject");
		 try {
			stmt = conn.prepareStatement("insert into feedback values(? , ? , ? ,?)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 try {
			stmt.setString(1,firstname);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}try {
			stmt.setString(2,lastname);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}try {
			stmt.setString(3,country);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}try {
			stmt.setString(4,subject);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		try {
			stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	
	  
	

}
