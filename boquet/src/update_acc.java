import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pkg.*;



@WebServlet("/update")
public class update_acc extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter pwriter = response.getWriter();
    
    
   
     String pass=request.getParameter("pass");
     String mail=request.getParameter("email");
     String fname=request.getParameter("first_name");
     String lname=request.getParameter("last_name");
     String uname=request.getParameter("uname");
     
     
     
     member e=new member();
     e.setUname(uname);e.setLast_name(lname);e.setFirst_name(fname);
     e.setPass(pass);e.setEmail(mail);
     System.out.println("in srvl "+fname);
     helper.update(e);
     
     
    
     response.sendRedirect("membersList");
  }

}