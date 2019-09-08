<%@page import="com.servlet.MyDb"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.get.set.UserHistoryModel"%>
<%@page import="java.util.List"%>
<%@ include file="user_navigation_bar.jsp"%>
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
                            <th>Borrow Date</th>
                            <th>Submission Date</th>
                            <th>Fine</th>
                            <th>Returned Date</th>
                        </tr>

                        <%
                       
                            SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
                            int user_id = Integer.parseInt(session.getAttribute("user").toString());
                            try {
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro", "root", "");
                                st = con.createStatement();
                                String sql = "SELECT * From issue_book inner join book  on issue_book.book_id= book.id where user_id='"+user_id+"'";

                                rs = st.executeQuery(sql);
                                    while (rs.next()) {

                                    UserHistoryModel user = new UserHistoryModel();
                                    user.setUserId(rs.getInt("user_id"));
                                    user.setBookName(rs.getString("bookname"));
                                    user.setBorrowDate(rs.getString("issue_date"));
                                    user.setRenewDate(rs.getString("renual_date"));

                                    String borrow = rs.getString("issue_date");
                                    String renew = rs.getString("renual_date");

                                    String returns = rs.getString("returned_date");

                                    int fine = 0;

                                    Date renewDate = dateformat.parse(renew);
                                    if (returns!=null) {
                                        // book has been returned

                                        Date ReturnDate = dateformat.parse(returns);
                                        user.setReturnDate(returns);
                                        boolean ch = ReturnDate.compareTo(renewDate) > 0;
                                        if (ch) {
                                            long diffInMillies = Math.abs(renewDate.getTime() - ReturnDate.getTime());
                                            long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);

                                            user.setFine(Integer.parseInt(String.valueOf(diff)) * 2);
                                            fine = Integer.parseInt(String.valueOf(diff)) * 2;
                                        } else {
                                            fine = 0;
                                            user.setFine(0);
                                        }
                                    } else {
                                        Date today = dateformat.parse(dateformat.format(new Date()));
                                        boolean ch = today.compareTo(renewDate) > 0;
                                        if (ch) {
                                            long diffInMillies = Math.abs(renewDate.getTime() - today.getTime());
                                            long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);

                                            user.setFine(Integer.parseInt(String.valueOf(diff)) * 2);
                                            fine = Integer.parseInt(String.valueOf(diff)) * 2;
                                        } else {
                                            fine = 0;
                                            user.setFine(0);
                                        }
                                        user.setReturnDate("Not Returned");

                                    }
                   %>
                        <tr>
                            <td><%=rs.getInt("user_id")%></td>
                            <td><%=rs.getString("bookname")%></td>
                            <td><%=rs.getString("issue_date")%></td>
                            <td><%=rs.getString("renual_date")%></td>
                            <td><%=fine%></td>
                            <td><%=user.getReturnDate()%></td>
                            <td></a></td>
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
                        
                        <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="h3 mt-5">
                    Recommended Books for You
                </div>
                        
                        <table class="table table-striped table-hover" >
                <tr >
                    <th>Book Name</th>
                    <th>Writer</th>
                    <th>ISBN</th>
                    <th>Publication</th>
                    <th>Edition</th>
                    <th>Category Name</th>
                    <th>Available</th>
                    <th>Issue Book</th>
                </tr>
                <%
             
 
                String s = "";
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro", "root", "");
                                
 
try {

                                Statement stt = con.createStatement();
                                String sql = "select category.categoryname, book.* from recommend inner join category on recommend.category_id = category.id inner join book on book.category_id = category.id where recommend.user_id = '"+user_id+"' order by recommend.count desc limit 1,15";
   ResultSet rss = stt.executeQuery(sql);
   while(rss.next()){
    
       
       %>
       <tr>

           <td><%=rss.getString("bookname")%></td>    
           <td><%=rss.getString("authorname")%></td> 
           <td><%=rss.getString("isbn")%></td> 
           <td><%=rss.getString("publication")%></td> 
           <td><%=rss.getString("edition")%></td> 
           <td><%=rss.getString("categoryname")%></td> 
           <td>Available</td>
           <td><a href="issue_book.jsp?id=<%=rss.getInt("id")%>">Issue Book</a></td>
           
       </tr>
       
       
       <%
   }  

con.close();
}
catch(Exception e){
e.printStackTrace();
}


                
                %>
                
            </table>
            
                        
                        
            </div>
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