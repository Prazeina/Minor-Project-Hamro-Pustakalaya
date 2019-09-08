package book;

import com.servlet.MyDb;
import user.get.set.UserLogin;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
//import user.get.set.User;
//import user.get.set.UserMapper;

@WebServlet("/myservlet")
public class SearchBook extends HttpServlet {

//    SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
    List<BookController> searchmodellist;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);//To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        searchmodellist= new ArrayList();
  
        Connection con = MyDb.getCon();
    try {
        Statement stmt = con.createStatement();
       ResultSet rs = stmt.executeQuery("select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id");
     
          while(rs.next()){
              BookController model= new BookController();
              model.setAuthorname(rs.getString("authorname"));
              model.setBookname(rs.getString("bookname"));
              model.setPublication(rs.getString("publication"));
              model.setIsbn(rs.getString("isbn"));
              model.setEdition(rs.getString("edition"));
              model.setId(rs.getInt("id"));
              model.setCategory_id(rs.getInt("category_id"));
              model.setCategoryname(rs.getString("categoryname"));
            searchmodellist.add(model);
              
          }
          
          request.setAttribute("model",searchmodellist);
          request.getRequestDispatcher("search_book.jsp").forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(SearchBook.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
}
