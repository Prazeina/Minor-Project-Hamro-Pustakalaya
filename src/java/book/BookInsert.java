package book;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.servlet.MyDb;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user.get.set.User;
import user.get.set.UserMapper;

/**
 *
 * @author DELL
 */
@WebServlet(urlPatterns = {"/BookInsert"})
public class BookInsert extends HttpServlet {
  UserMapper usermapper=new UserMapper();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {      
        
    }

 
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doGet(req, resp);

    }
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
              String bookname = request.getParameter("bookname");
          String authorname = request.getParameter("authorname");
            String isbn = request.getParameter("isbn");
             String publication = request.getParameter("publication");
             String edition = request.getParameter("edition");
             String bookselect = request.getParameter("bookselect");
             
             int category_id = 0;
            
             MyDb db  = new MyDb();
        Connection con = db.getCon();

          if(bookselect.equals("Comic"))
           {
               category_id=1;
           }
               if(bookselect.equals("Horror"))
           {
               category_id=2;
           }
               if(bookselect.equals("Romance"))
           {
               category_id=3;
           }
                 if(bookselect.equals("Funny"))
           {
               category_id=4;
           }
                   if(bookselect.equals("History"))
           {
               category_id=5;
           }
                     if(bookselect.equals("Thriller"))
           {
               category_id=6;
           }
                       if(bookselect.equals("Crime and Mistery"))
           {
               category_id=7;
           }
                         if(bookselect.equals("Science Fiction"))
           {
               category_id=8;
           }
                           if(bookselect.equals("Poetry"))
           {
               category_id=9;
           }
                             if(bookselect.equals("Self Help"))
           {
               category_id=10;
           }
        try {
       PreparedStatement st = con.prepareStatement("insert  into book (bookname,authorname,isbn,publication,edition,category_id) values (?,?,?,?,?,?)");
     
       st.setString(1, bookname);
            st.setString(2, authorname);
            st.setString(3, isbn);
            st.setString(4, publication);
            st.setString(5, edition);
            st.setInt(6, category_id);
            
          
           boolean rowInserted = st.executeUpdate()>0;
        
        if(rowInserted){
          
            response.sendRedirect("admin_add_book.jsp");
        }else{
            response.sendRedirect("admin_add_book.jsp");
        }
    } catch (SQLException ex) {
       ex.printStackTrace();
    }
    }

   
    }
