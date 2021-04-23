import pkg.*;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class check_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreparedStatement stmt=null;	
	Connection conn=helper.getConnection();
	
	response.setContentType("text/html");
	 PrintWriter pwriter = response.getWriter();
	
	 
	 String uname=request.getParameter("uname");
	 String pass=request.getParameter("password");
   // 
	 if(helper.validate(uname,pass)) { 
		 
		 //System.out.println("check_login");	 
	 RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
	 dis.forward(request, response);
		 //pwriter.print("");
		 
	 }//eo inner if
	 else
	 {			
		 
				 //fun
	 pwriter.print("<center>User name or password is incorrect!</center>");
	 RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
	 dis.include(request, response);

			
			}//eo inner else
	 
	 	
	 

	 
		
		
	}

}
