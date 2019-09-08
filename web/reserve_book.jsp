<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<%@ include file="user_navigation_bar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <div class="h3 mt-5">
                Reserve Book
            </div>
            <%
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
String issue_date=sdf.format(c.getTime());
c.setTime(new Date()); // Now use today date.
c.add(Calendar.DATE, 15); // Adding 15 days
String output = sdf.format(c.getTime());
String renual_date=sdf.format(c.getTime());
String userid=(String)session.getAttribute("user");

	String bookid=request.getParameter("id");
	//String userid=request.getParameter("user_id");
	
	
	Connection con=null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hamro","root","");
	String	sqlInsertItem="insert into issue_book(user_id,book_id,issue_date,renual_date) values('"+userid+"','"+bookid+"','"+issue_date+"','"+renual_date+"')";
	pstInsertItem=con.prepareStatement(sqlInsertItem);
	pstInsertItem.executeUpdate();
	out.println("Success fully added");
	}
            catch(ClassNotFoundException e){
		out.println("<b>Driver Class not found Exception: </b>"+e.getMessage());
		
	}
	catch(SQLException e){
		out.println("<b>SQL EXception:</b>"+e.getMessage());
	}

            %>

            
        </div>
                <div class="col-3"></div>

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
