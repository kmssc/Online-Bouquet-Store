package pkg;

import java.util.*;  
import java.sql.*;

public class helper {
	
	public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb1","root","Udayini@1305");  
        }catch(Exception e){String ex=e.toString();
    	if(ex.substring(29, 52).equals("CommunicationsException")) {
    		System.out.println("!!!!!!! How many times do I need to remind you that you need to start mysql server first!!!!!!!");  
    		}  
        
    }	
        return con;
	}
	
	public static boolean validate(String uname,String pass) {
        
        Connection conn = null;
        PreparedStatement ps = null;
  
        //System.out.println("here");
        
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            conn = getConnection();  
            ps = conn.prepareStatement("select check_acc(?,?)");
            ps.setString(1,uname);ps.setString(2,pass);
            
            ResultSet rs=ps.executeQuery();rs.next();
            int stts=rs.getInt(1);//System.out.println(stts);
            if(stts==1){
            	return true;
            }
            //status=
            //pst.setString(2, pass);  
            conn.close();
            

        } catch (Exception e) {  
System.out.println(e);  
        }
        return false;
    }
	
	public static boolean validate2(String f,String l,String mail,String uname,String pass) {
	
		Connection conn = null;
        PreparedStatement ps = null;
  
        //System.out.println("here");
        
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            conn = getConnection();  
            ps = conn.prepareStatement("select create_acc(?,?,?,?,?)");
            ps.setString(1,f);ps.setString(2,l);ps.setString(3,mail);
            ps.setString(4,uname);ps.setString(5,pass);
            
            ResultSet rs=ps.executeQuery();rs.next();
            int stts=rs.getInt(1);//System.out.println(stts);
            if(stts==1){
            	return true;
            }
            //status=
            //pst.setString(2, pass);  
            conn.close();
            

        } catch (Exception e) {  
System.out.println(e);  
        }
        return false;	
	}
	
	
public static boolean val_admin(String uname,String pass) {
        
        Connection conn = null;
        PreparedStatement ps = null;
  
        //System.out.println("here");
        
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            conn = getConnection();  
            ps = conn.prepareStatement("select check_admin(?,?)");
            ps.setString(1,uname);ps.setString(2,pass);
            
            ResultSet rs=ps.executeQuery();rs.next();
            int stts=rs.getInt(1);//System.out.println(stts);
            if(stts==1){
            	return true;
            }
            //status=
            //pst.setString(2, pass);  
            conn.close();
            

        } catch (Exception e) {  
System.out.println(e);  
        }
        return false;
    }

public static List<member> getAllMembers(){  
    List<member> list=new ArrayList<member>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from members");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            member e=new member();
            e.setEmail(rs.getString("email")); e.setFirst_name(rs.getString("first_name")); e.setLast_name(rs.getString("last_name"));
            e.setUname(rs.getString("uname"));e.setPass(rs.getString("pass"));

            list.add(e);  
        }  
        con.close();  
    }catch(Exception ee){System.out.println("error is here "+ee);}  
      
    return list;  
}


public static int update(member e){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("update members set email=?,first_name=?,last_name=?,pass=? where uname=?");  
        System.out.println("in updaet "+e.getFirst_name());
       ps.setString(1,e.getEmail());ps.setString(2,e.getFirst_name());ps.setString(3,e.getLast_name());ps.setString(4,e.getPass());
       ps.setString(5,e.getUname());
        
        status=ps.executeUpdate();  
          
        con.close();  
    }catch(Exception ex){System.out.println("except "+ex);}  
      
    return status;  
}

public static int delete(String uname) {
int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from members where uname=?");
       
        
        ps.setString(1,uname);
        status=ps.executeUpdate();  
          
        con.close();  
    }catch(Exception e){System.out.println(e);}  
      
    return status;
}


public static member getMemberByUname(String uname){  
    member e=new member();  
    
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from members where uname=?");  
        ps.setString(1,uname);  
        ResultSet rs=ps.executeQuery();  
        if(rs.next()){
        	            	
            e.setEmail(rs.getString("email")); e.setFirst_name(rs.getString("first_name"));  
            e.setPass(rs.getString("pass")); e.setLast_name(rs.getString("last_name")); 
            e.setUname(rs.getString("uname"));   
        }  
        con.close();  
    }catch(Exception ex){System.out.println("error is here "+ex);}  
      
    return e;  
}


}

