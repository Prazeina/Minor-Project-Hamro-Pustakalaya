<%-- 
    Document   : delete
    Created on : Jul 22, 2018, 11:06:01 AM
    Author     : DELL
--%>



<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%@page import="java.sql.Statement"%>
<%@page import="user.get.set.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.String"%>
<%@page import="user.get.set.UserMapper"%>  
<%@page import="user.get.set.UserController"%> 
         
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
        
        <%/*
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
String issue_date=sdf.format(c.getTime());
c.setTime(new Date()); // Now use today date.
c.add(Calendar.DATE, 15);

Date today = new Date();
String todaystring = sdf.format(today);   // date lai string ma lageko

//today = sdf.parse(todaystring);   // string lai datet ma lageko

Date renew = c.getTime();
String renewstring = sdf.format(renew);*/


try{
    
    

String id = request.getParameter("id");
MyDb db  = new MyDb();
        Connection con = db.getCon();
//out.println(n);
         
         Statement stmt = con.createStatement();
         stmt.execute("DELETE FROM register WHERE id='"+id+"'");       
          response.sendRedirect("admin_delete_book.jsp");
}catch(Exception e){}
     %>
    </body>
</html>
