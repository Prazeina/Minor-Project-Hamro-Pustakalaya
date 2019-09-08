<%-- 
    Document   : logout
    Created on : Jul 20, 2018, 8:03:05 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n =(String)session.getAttribute("name");
            session.invalidate();
            %>
            <script> window.alert("LOGOUT SUCCESSFULLY");</script>
       
        <%
          String redirectedPage = "/parentPage";
          response.sendRedirect("index.jsp");
        
        
        %>
    </body>
</html>
