<!DOCTYPE html>
<%@ include file="user_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
                Request Book List 
            </div>
            <table class="table table-striped table-hover" >
                <tr >
                    <th>Book Name</th>
                    <th>Writer</th>
                    <th>User Name</th>
                    <th>Edition</th>
                    
                </tr>
                
 <%
//String id = request.getParameter("sid");


try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection con = null;
Statement st = null;
ResultSet rs = null;
%>
                <%
                    //String id=request.getParameter("id");
                    
try{ 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
String sql ="insert  into contact (bookname,writer,edition) values (?,?,?) ";

rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr >
    <td><%=rs.getString("bookname") %></td>
<td><%=rs.getString("writer") %></td>
<!--<td><%=rs.getString("name") %></td>-->
<td><%=rs.getString("edition") %></td>



</tr>

<% 
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



                
            </table>
            
            
            <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        .container{
            height:650px;
            width:1200px;
            background-image: url(kitab7.jpg)
        }
        .one{
            height:650px;
            width:400px;
            background-color: blue;
            background: rgba(255, 255, 255, 0.4);
            margin-left: 350px;
        }

    </style>

           
        </div>
    </div>
</div>