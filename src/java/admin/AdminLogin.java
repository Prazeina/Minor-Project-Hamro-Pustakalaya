/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import com.servlet.MyDb;
import user.get.set.UserLogin;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "AdminLogin", urlPatterns = {"/AdminLogin"})
public class AdminLogin extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
/*String email = request.getParameter("email");
          
           
           
           String password = request.getParameter("password");
           
           MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
          
           ResultSet rs = stmt.executeQuery("select aid,email,password from admin where email = '"+email+"' and password = '"+password+"'"); 
           rs.next();
           String n = rs.getString("aid");
           HttpSession session=request.getSession();  
           session.setAttribute("name",n);
         // String redirectedPage = "/parentPage";
          response.sendRedirect("admin_add_books.jsp");
           
        } catch (SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        }
   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
            String password = request.getParameter("password");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select aid,email,password from admin where email = '"+email+"' and password = '"+password+"'"); 
           rs.next();
           
           String responseEmail = rs.getString("email");
           String responsePassword = rs.getString("password");
           
           if(email!=null && password!= null){
               
           
           if(email.equals(responseEmail) && password.equals(responsePassword)){
               response.sendRedirect("admin_add_books.jsp");
           }
           
           }
           else{
               // set error message
               //request.setAttribute("error", "User and Password Doestnot match");
               //request.getRequestDispatcher("userlogin.jsp").forward(request, response);         
                response.sendRedirect("admin.jsp");
               
           }
        } catch (SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    }
    

