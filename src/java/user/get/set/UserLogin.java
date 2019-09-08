/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.get.set;

import com.servlet.MyDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
public class UserLogin extends HttpServlet {
    

 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
           Connection con = MyDb.getCon();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select id,name,email,password from register where email = '"+email+"' and password = '"+password+"'"); 
           rs.next();
            int id = rs.getInt("id");
            HttpSession session=request.getSession();
            session.setAttribute("user", id);
           
           String responseEmail = rs.getString("email");
           String responsePassword = rs.getString("password");
           
           if(email!=null && password!= null){
               
           
           if(email.equals(responseEmail) && password.equals(responsePassword)){
               
               
               response.sendRedirect("user_history.jsp");
           }
           
           }
           else{ 
                response.sendRedirect("userlogin.jsp");
               
           }
        } catch (SQLException ex) {
            Logger.getLogger(UserLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }

   

}