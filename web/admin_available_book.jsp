<%@page import="java.util.List"%>
<%@page import="book.BookController"%>
<%@page import="com.servlet.MyDb"%>
<!DOCTYPE html>
<%@ include file="user_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="h3 mt-5">
                Available Book List 
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
           
   
    
            List<BookController> booklist = (List<BookController>) request.getAttribute("model");
            for (BookController post: booklist) {  
        %> 
        <tr>
            <td><%=post.getBookname()%><input type="text" value="<%=post.getId()%>" hidden/></td>
            <td><%=post.getAuthorname()%></td>
            <td><%=post.getIsbn()%></td>
            <td><%=post.getPublication()%></td>
            <td><%=post.getEdition()%></td>
            <td><%=post.getCategoryname()%></td>
            <td>Available</td>
            <td><a href="issue_book.jsp?id=<%=post.getId()%>">Issue Book</a></td>
          
        </tr>
        
<%}%>

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