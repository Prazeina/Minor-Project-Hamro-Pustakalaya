<%-- 
    Document   : delete
    Created on : Jul 22, 2018, 11:06:01 AM
    Author     : DELL
--%>



<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page import="java.sql.Statement"%>
<%@page import="user.get.set.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@page import="user.get.set.UserMapper"%>  
<%@page import="user.get.set.UserController"%> 

try{
    
    

String id = request.getParameter("id");
MyDb db  = new MyDb();
        Connection con = db.getCon();
//out.println(n);
         
         Statement stmt = con.createStatement();
         stmt.execute("DELETE FROM register WHERE id='"+id+"'");       
          response.sendRedirect("admin_delete_book.jsp");
}catch(Exception e){}
     
    </body>
</html>
