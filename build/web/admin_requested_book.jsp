<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<%@ include file="admin_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
               Requested Book
            </div>
            
            
<%
//int n =(int)session.getAttribute("categoryname");
 
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
            <table class="table table-striped table-hover" >
                <tr >
                    <!--<th>User Name</th>-->
                    <th>Name of Book</th>
                    <th>Writer</th>
                    <th>Edition</th>
                    <th>User ID </th>

                </tr>
                
<%
try{ 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
String sql ="SELECT * FROM contact";

rs = st.executeQuery(sql);
while(rs.next()){
%>
                <tr>
    
<td><%=rs.getString("bookname") %></td>
<td><%=rs.getString("writer") %></td>
<td><%=rs.getString("edition") %></td>      
<td><%=rs.getString("user_id") %></td> 

                </tr>
                <% 
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

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
