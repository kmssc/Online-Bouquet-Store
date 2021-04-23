

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pkg.*;
/**
 * Servlet implementation class check_admin
 */
@WebServlet("/cadmin")
public class check_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("uname");String pass=request.getParameter("pass");
		
		 if(helper.val_admin(uname,pass)) { 
			 
			 	 
		 RequestDispatcher dis=request.getRequestDispatcher("adminHome.jsp");
		 dis.forward(request, response);
			 //pwriter.print("");
			 
		 }//eo inner if
		 else
		 {			
			 
					 //fun
		 out.print("<h2 style='color:white'><center>User name or password is incorrect!</center></h2>");
		 RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
		 dis.include(request, response);

				
				}//eo inner else
		
	}

}
