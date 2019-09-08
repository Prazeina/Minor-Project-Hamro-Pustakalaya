/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package book;

import com.servlet.MyDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

     List<BookController> searchmodellist  ;
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        searchmodellist= new ArrayList();
        String searchField = request.getParameter("search_field");
        
        MyDb db = new MyDb();
        Connection con = db.getCon();
        
        try {
            Statement sta = con.createStatement();
            ResultSet rs = sta.executeQuery("select Category.categoryname,book.* from Category inner join book where Category.id= book.category_id and book.bookname like '%"+searchField+"%'");
            
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
            Logger.getLogger(SearchServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
