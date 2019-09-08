<%-- 
    Document   : deletebook
    Created on : Jul 24, 2018, 11:03:07 PM
    Author     : DELL
--%>




<%-- 
    Document   : delete
    Created on : Jul 22, 2018, 11:06:01 AM
    Author     : DELL
--%>



<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page import="java.sql.Statement"%>
<%@page import="user.get.set.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%--<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.servlet.MyDb"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>-->

         
<%--<jsp:useBean id="s" class="user.get.set.UserController"></jsp:useBean>--%>  
<%--<jsp:setProperty property="*" name="s"/>--%>  
      <%  
//String id=request.getParameter("id");  
//UserMapper u=UserMapper.getId(Integer.parseInt(id));  
%>  
<%/*  
    //List<User> s = new ArrayList<User>();

    User s = new User();
////populate list if you want
////UserMapper.deleteUser(s);
//User.deleteCourse(new User(Integer.parseInt(id.getText())));
UserMapper.deleteUser(s);
response.sendRedirect("admin_delete_book.jsp"); */

%>
        <%/*
                     MyDb db  = new MyDb();
        Connection con = db.getCon();
            try{  
        
        PreparedStatement ps=con.prepareStatement("delete from register where id=?");  
        ps.setInt(1,id);  
        ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}
        */%>
        
        <%
                      
try{

String id = request.getParameter("id");
MyDb db  = new MyDb();
        Connection con = db.getCon();
//out.println(n);
         
         Statement stmt = con.createStatement();
         stmt.execute("DELETE FROM book WHERE id='"+id+"'");       
          response.sendRedirect("search_book.jsp");
}catch(Exception e){}
     %>
    </body>
</html>

