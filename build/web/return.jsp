<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.servlet.MyDb"%>
<%
    String book_id = request.getParameter("book_id");
//		System.out.println("ReturnServlet outputs book_id: " + book_id);
		String user_id = request.getParameter("user_id");
//		System.out.println("ReturnServlet outputs user_id: " + user_id);
		
		MyDb db  = new MyDb();
	        Connection con = db.getCon();
		String borrow_date = new String();
                Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery ("SELECT issue_date FROM issue_book WHERE user_id='"+user_id+"' and book_id='"+book_id+"'");
		try {
			if(rs.next()){
				borrow_date = rs.getString("borrow_date");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
                try{  
         String id = request.getParameter("id");
         stmt.execute("DELETE FROM issue_book WHERE id='"+id+"'user_id='" + user_id + "' and book_id='" + book_id + "'");       
}
                catch(Exception e){}
			
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String return_time = df.format(new Date());
		sql = "INSERT INTO history(user_id, book_id, borrow_time, return_time) VALUE('" 
				+ user_id + "','"
				+ book_id + "','"
				+ borrow_time + "','"
				+ return_time
				+ "');";
		con.update(sql);
		
		con.close();
		
		response.sendRedirect("administrator.jsp");
	}%>