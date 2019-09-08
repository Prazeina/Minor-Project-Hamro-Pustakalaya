<%@page import="com.servlet.MyDb"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="user.get.set.UserMapper"%>
<%@page import="java.util.List"%>
<%@page import="user.get.set.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
 
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
<%@ include file="admin_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
                Delete Member
            </div>

            <table class="table table-striped table-hover" >
                <tr>
                    <th>User Id</th>
                    <th>User Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                <%
//String id = request.getParameter("sid");
List<User> list=UserMapper.getAllUser();  
request.setAttribute("list",list); 
                %>

         

<%
    
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

//Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
                <%
                    //String id=request.getParameter("id");
                     MyDb db  = new MyDb();
        Connection con = db.getCon();
    /*                
try{ 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
String sql ="SELECT * from register";

rs = st.executeQuery(sql);
*/
%>
<c:forEach items="${list}" var="u"> 
<tr >
    <td>${u.getId()}</td>
<td>${u.getName()}</td>
<td>${u.getEmail()}</td>

<td><a href="delete.jsp?id=${u.getId()}">Delete</a></td>


</tr>
</c:forEach>

<% /*
}
//con.close();
 catch (Exception e) {
e.printStackTrace();
}*/
%>


            </table>

        </div>
    </div>
</div>


 <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        .container{
            height:650px;
            width:1200px;
            background-image: url(kitab8.jpg)
        }
        .one{
            height:650px;
            width:400px;
            background-color: blue;
            background: rgba(255, 255, 255, 0.4);
            margin-left: 350px;
        }

    </style>
</body>
</html>