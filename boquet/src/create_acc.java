

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pkg.helper;

/**
 * Servlet implementation class create_acc
 */

public class create_acc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PreparedStatement stmt=null;	
		Connection conn=helper.getConnection();
		
		response.setContentType("text/html");
		 PrintWriter pwriter = response.getWriter();
		
		 String f=request.getParameter("first_name");String l=request.getParameter("last_name");
		 String email=request.getParameter("email");
		 String uname=request.getParameter("uname");String pass=request.getParameter("password");
	   // 
		 if(helper.validate2(f,l,email,uname,pass)) { 
			 
			 //System.out.println("check_login");
			 pwriter.println("<script type=\"text/javascript\">");
			 pwriter.println("alert('Account Successfully created');");
				pwriter.println("location='login.jsp';");
				pwriter.println("</script>");	
		 //RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
		 //dis.forward(request, response);
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
