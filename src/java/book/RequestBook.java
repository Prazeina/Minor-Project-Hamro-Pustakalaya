package book;

import com.servlet.MyDb;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
@WebServlet(name="RequestBook", urlPatterns = {"/RequestBook"})
public class RequestBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookname = request.getParameter("bookname");
        String writer = request.getParameter("writer");
        String edition = request.getParameter("edition");
        HttpSession session = request.getSession();
        int user_id = (int) session.getAttribute("user");

        MyDb db = new MyDb();
        Connection con = db.getCon();
        try {
            PreparedStatement st = con.prepareStatement("insert  into contact (bookname,writer,edition,user_id) values (?,?,?,?)");
            st.setString(1, bookname);
            st.setString(2, writer);
            st.setString(3, edition);
            st.setInt(4, user_id);

            boolean rowInserted = st.executeUpdate() > 0;

            if (rowInserted) {
                response.sendRedirect("user_history.jsp");
            }
//        else{
//            response.sendRedirect("user_create_accouont.jsp");
//        }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
