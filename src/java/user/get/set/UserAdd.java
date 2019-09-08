package user.get.set;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.servlet.MyDb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
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
import user.get.set.UserMapper;

/**
 *
 * @author DELL
 */
@WebServlet(urlPatterns = {"/UserAdd"})
public class UserAdd extends HttpServlet {

    //SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);//To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Connection con = MyDb.getCon();
    try {
       PreparedStatement st = con.prepareStatement("insert  into register (name,email,password) values (?,?,?)");
     
            st.setString(1, name);
            st.setString(2, email);
            st.setString(3, password);
          
           boolean rowInserted = st.executeUpdate()>0;
        
        if(rowInserted){
            response.sendRedirect("userlogin.jsp");
        }else{
            response.sendRedirect("user_create_account.jsp");
        }
    } catch (SQLException ex) {
       ex.printStackTrace();
    }
    }
        
}
