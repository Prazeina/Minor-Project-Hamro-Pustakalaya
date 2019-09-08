<%-- 
    Document   : request_book_program
    Created on : Aug 10, 2018, 3:44:40 PM
    Author     : Sima
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        
        String bookname = request.getParameter("bookname");
        String writer = request.getParameter("writer");
        String edition = request.getParameter("edition");
//        HttpSession session = request.getSession();
        int user_id = (int) session.getAttribute("user");
        
        MyDb db  = new MyDb();
        Connection con = db.getCon();
    try {
       PreparedStatement st = con.prepareStatement("insert  into contact (bookname,writer,edition,user_id) values (?,?,?,?)");
     
       st.setString(1, bookname);
            st.setString(2, writer);
            st.setString(3, edition);
            st.setInt(4, user_id);
          
           boolean rowInserted = st.executeUpdate()>0;
        
        if(rowInserted){
            response.sendRedirect("user_history.jsp");}
//        else{
//            response.sendRedirect("user_create_accouont.jsp");
//        }
    } catch (SQLException ex) {
       ex.printStackTrace();
    }
    }
        %>
    
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
