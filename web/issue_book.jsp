<%-- 
    Document   : issue_book
    Created on : Jul 27, 2018, 1:16:26 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    int book_id = Integer.parseInt(request.getParameter("id").toString());

    int user_id = Integer.parseInt(session.getAttribute("user").toString());

    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    Calendar c = Calendar.getInstance();
    String issue_date = sdf.format(c.getTime());
    c.setTime(new Date()); // Now use today date.
    c.add(Calendar.DATE, 15);

    Date today = new Date();
    String todaystring = sdf.format(today);   // date lai string ma lageko

//today = sdf.parse(todaystring);   // string lai datet ma lageko
    Date renew = c.getTime();
    String renewstring = sdf.format(renew);

    Connection con = MyDb.getCon();
   
//out.println(n);

    try {
        PreparedStatement st = con.prepareStatement("insert  into issue_book (user_id,book_id,issue_date,renual_date) values (?,?,?,?)");
        st.setInt(1, user_id);
        st.setInt(2, book_id);
        st.setString(3, todaystring);
        st.setString(4, renewstring);
        boolean rowInserted = st.executeUpdate() > 0;

     
      
     ResultSet rs = st.executeQuery("select * from recommend where user_id ='"+user_id+"' and category_id =(select category_id from book where id='"+book_id+"')");
     if(rs.next()){
         
         int count = rs.getInt("count");
         count++;
        PreparedStatement stu=con.prepareStatement("update recommend set count='"+count+"' where id = '"+rs.getInt("id")+"'");
        stu.execute();
         
         
     }else{
         ResultSet rss = st.executeQuery("select * from book where id='"+book_id+"'");
         
         PreparedStatement std= con.prepareStatement("insert into recommend (user_id, category_id, count) values (?,?,?)");
         std.setInt(1, user_id);
             if(rss.next()){
             std.setInt(2, rss.getInt("category_id"));
             }
         std.setInt(3, 1);//count jaile 1 bata suru
       std.execute();
     }
     
     
        if (rowInserted) {
            response.sendRedirect("user_history.jsp");
        } else {
            response.sendRedirect("search_book.jsp");
        }
    
    } catch (SQLException ex) {
        ex.printStackTrace();
    }

%>