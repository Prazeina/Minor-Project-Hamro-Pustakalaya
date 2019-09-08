<%-- 
    Document   : admin_issue_history
    Created on : Aug 2, 2018, 7:47:02 PM
    Author     : DELL
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Date"%>
<%@page import="book.UserHistoryModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ include file="admin_navigation_bar.jsp"%>
<!DOCTYPE html>
<html>
    <head>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
                USER HISTORY
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
             </head>
             <body>
            <table class="table table-striped table-hover" >
                <tr >
                    <th>User_id</th>
                  
                    <th>Book</th>
                    <th>Borrow Time</th>
                    <th>Return Time</th>
                    <th>Fine</th>
                    <th>Returned</th>
                    <th>Action</th>
                </tr>
                
 <%
     
     //int user_id = Integer.parseInt(session.getAttribute("user").toString());

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
//String sql ="SELECT * FROM issue_book ";

//     List<UserHistoryModel> userHistoryModel =null;
     SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
     //int user_id = Integer.parseInt(session.getAttribute("user").toString());
try{ 
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
st=con.createStatement();
String sql ="SELECT book.id,book.bookname ,issue_book.*  FROM issue_book inner join book  where book.id= issue_book.book_id ";

rs = st.executeQuery(sql);
//List<UserHistoryModel> userHistoryModel  = new ArrayList<>();
while(rs.next()){  
  
   UserHistoryModel user = new UserHistoryModel();
   user.setUserId(rs.getInt("user_id"));
   user.setBookName(rs.getString("bookname"));
   user.setBorrowDate(rs.getString("issue_date"));
   user.setRenewDate(rs.getString("renual_date"));
   
   String borrow = rs.getString("issue_date");
   String renew = rs.getString("renual_date");
      
   String returns = rs.getString("returned_date");
   
   
   int fine =0;
   
   Date renewDate = dateformat.parse(renew);
   if(!returns.equalsIgnoreCase("")){
       // book has been returned
       
      Date ReturnDate = dateformat.parse(returns);
      user.setReturnDate(returns);
      boolean ch = ReturnDate.compareTo(renewDate)>0;
       if(ch){
           long diffInMillies = Math.abs(renewDate.getTime() - ReturnDate.getTime());
    long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
     
        user.setFine(Integer.parseInt(String.valueOf(diff))*2);
        fine = Integer.parseInt(String.valueOf(diff))*2;
       }else{
           fine=0;
           user.setFine(0);
       }
   }else{
       Date today = dateformat.parse(dateformat.format(new Date()));
       boolean ch = today.compareTo(renewDate)>0;
       if(ch){
           long diffInMillies = Math.abs(renewDate.getTime() - today.getTime());
    long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
     
        user.setFine(Integer.parseInt(String.valueOf(diff))*2);
        fine = Integer.parseInt(String.valueOf(diff))*2;
       }else{
           fine=0;
           user.setFine(0);
       }
//        long diffInMillies = Math.abs(renewDate.getTime() - today.getTime());
//    long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
//     if(diff<0){
//        user.setFine(Integer.parseInt(String.valueOf(diff))*2);
//        fine = Integer.parseInt(String.valueOf(diff))*2;
//    }else{
//        user.setFine(0);
//        fine = 0;
//    }
     user.setReturnDate("Not Returned");
       
   } 


    
   
%>
                <tr>
   
<td><%=rs.getString("user_id") %></td>
<td><%=rs.getString("book_id") %></td>
<td><%=rs.getString("issue_date") %></td>
<td><%=rs.getString("renual_date") %></td>
<td><%=fine%></td>
<td><%=user.getReturnDate()%></td>

<td>
                        
    <a href="admin_returned_book.jsp?issue_id=<%=rs.getInt("id")%>">Return Book</a>
                    </td>
              

                </tr>
                <% 
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
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
</body>
</html>