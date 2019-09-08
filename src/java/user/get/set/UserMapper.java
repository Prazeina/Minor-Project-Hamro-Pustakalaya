/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.get.set;

import com.servlet.MyDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class UserMapper {

    public UserMapper() {
    }

    public static ArrayList<User> getAllUser() {
        ArrayList<User> user = new ArrayList<User>();
        Connection con = null;
        ResultSet result = null;

        try {
            con = MyDb.getCon();
            Statement st = con.createStatement();
            result = st.executeQuery("SELECT * FROM register;");

            while (result.next()) {
                int ID = result.getInt(1);
                String name = result.getString(2);
                String email = result.getString(3);

                String password = result.getString(4);

                user.add(new User(ID, name, email, password));
            }
        } catch (SQLException e) {

        } finally {
            MyDb.releaseConnection(con);
        }

        return user;
    }

    public static User getUser(int user_id) {
        User s = null;
        Connection con = null;
        ResultSet result = null;

        try {
            con = MyDb.getCon();
            PreparedStatement st = con.prepareStatement("SELECT * FROM register WHERE id = ?;");
            st.setInt(1, user_id);
            result = st.executeQuery();

            if (result.next()) {
                int ID = result.getInt(1);
                String name = result.getString(2);
                String email = result.getString(3);

                String password = result.getString(4);

                s = new User(ID, name, email, password);

            }

        } catch (SQLException e) {
            System.out.print("Error" + e);
        } finally {
            MyDb.releaseConnection(con);
        }

        return s;
    }

    public void insertNewUser(User s) {
        Connection con = null;

        try {
            con = MyDb.getCon();
            PreparedStatement st = con.prepareStatement("INSERT INTO register (id, name, email, password) values (?,?,?,?)");
            st.setInt(1, s.getId());
            st.setString(2, s.getName());
            st.setString(3, s.getEmail());

            st.setString(4, s.getPassword());

            st.executeUpdate();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);

        } finally {
            MyDb.releaseConnection(con);
        }
    }

    public static void deleteUser(User s) {
        Connection con = null;

        try {
            con = MyDb.getCon();
            PreparedStatement st = con.prepareStatement("DELETE FROM register WHERE id = ? ");
            st.setInt(1, s.getId());
            st.executeUpdate();

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        } finally {
            MyDb.releaseConnection(con);
        }
    }

      public static User getRecordById(int id) {
        Connection con = null;
        User u = new User();
        try {
            con = MyDb.getCon();
            PreparedStatement ps = con.prepareStatement("select * from register where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));

                u.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            System.out.println(e);

        }
        return u;

    }
}
