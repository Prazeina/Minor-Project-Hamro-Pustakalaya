<%-- 
    Document   : admin_returned_book
    Created on : Aug 7, 2018, 10:23:19 PM
    Author     : DELL
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <%    
           // int user_id = Integer.parseInt(request.getParameter("user_id").toString());
        int issue_id = Integer.parseInt(request.getParameter("issue_id").toString());
            
            
            
            SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
            
            
            try {
   
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
 
Connection con = null;
Statement st = null;
ResultSet rs = null;
try{

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();

String sql = "UPDATE issue_book set returned_date = ? where id = '"+issue_id+"'";

PreparedStatement ps= con.prepareStatement(sql);
Date today = dateformat.parse(dateformat.format(new Date()));
ps.setString(1,dateformat.format(today));

if(ps.executeUpdate()==1){
 response.sendRedirect("admin_issue_history.jsp");
}else{
     response.sendRedirect("admin_issue_history.jsp");

}

}
catch(Exception e){
    e.printStackTrace();
}


%>


    </body>
</html>
