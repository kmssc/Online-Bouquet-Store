import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;  
import pkg.*;  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;  
@WebServlet("/membersList")  
public class membersList extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();
        

        
    
          
        out.println("<h1>Employees List</h1>");  
          
        List<member> list=helper.getAllMembers();  
          
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>First Name</th><th>Last Name</th><th>Email</th><th>Username</th><th>Password</th></tr>");  
        for(member e:list){
         out.print("<tr><td>"+e.getFirst_name()+"</td><td>"+e.getLast_name()+"</td><td>"+e.getEmail()+"</td><td>"+
        e.getUname()+"</td><td>"+e.getPass()+"</td><td><a href='adminMemEdit.jsp?uname="+e.getUname()+"'>edit</a></td>  <td><a href='delete?uname="+e.getUname()+"'>delete</a></td></tr>");  
        }  
        out.print("</table>");
        out.print("<a href='adminHome.jsp'>Back</a>");
        
    
    
    
          
        out.close();  
    }  
}