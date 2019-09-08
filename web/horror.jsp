<!DOCTYPE html>
<%@ include file="user_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
                Horror Book List 
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
                    <th>Book Name</th>
                    <th>Writer</th>
                    <th>ISBN</th>
                    <th>Publication</th>
                    <th>Edition</th>
                    
                </tr>
                
 <%
try{ 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
String sql ="SELECT * FROM book inner join Category on  Category.id=book.Category_id where book.Category_id =2";

rs = st.executeQuery(sql);
while(rs.next()){
%>
                <tr>
    
<td><%=rs.getString("bookname") %></td>
<td><%=rs.getString("authorname") %></td>
<td><%=rs.getString("isbn") %></td>
<td><%=rs.getString("publication") %></td>
<td><%=rs.getString("edition") %></td>


                

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
                    <td></td>
                    <td></td>


                

                </tr>
                
            </table>
            
            
            <link rel="stylesheet" href="bootstrap.min.css">
    <style>
        .container{
            height:650px;
            width:1200px;
            background-image: url(kitab9.jpg)
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