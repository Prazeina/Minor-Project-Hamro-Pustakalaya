<%-- 
    Document   : update
    Created on : Jul 24, 2018, 11:40:29 PM
    Author     : DELL
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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

<%--
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
        
          <%@page import="user.get.set.UserMapper"%>  
         <%@page import="user.get.set.UserController"%> 
<%--<jsp:useBean id="s" class="user.get.set.UserController"></jsp:useBean>--%>  
<%--<jsp:setProperty property="*" name="s"/>--%> 
<%  
String id=request.getParameter("id");  
User u=UserMapper.getRecordById(User.parseString(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="update.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  

 
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>
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
                       Connection con = null;
    try
    {
      con = MyDb.getCon();
        {
            PreparedStatement st = con.prepareStatement("UPDATE regiser SET name = ?, email = ?, password = ? WHERE Id = ?");

     int ID = s.getId();
     
     String name = s.getName();
     String email = s.getEmail();
     String password = s.getPassword();


     
      //This is the updated information
      st.setString(1, name);
      st.setString(2, email);
      st.setString(3, password);
    
      st.setInt(4, ID);
      st.executeUpdate();
      
        }
    }
    catch (SQLException e){}
                      
try{

String id = request.getParameter("id");
MyDb db  = new MyDb();
        Connection con = db.getCon();
//out.println(n);
         
         Statement stmt = con.createStatement();
         stmt.execute("Update register set(name,email,password) WHERE id='"+id+"'");       
          response.sendRedirect("admin_delete_book.jsp");
}catch(Exception e){}
     %>
    </body>
</html>

