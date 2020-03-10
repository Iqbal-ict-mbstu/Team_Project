import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Register extends javax.servlet.http.HttpServlet  {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

         DatabaseDao db = new DatabaseDao();


         String username = request.getParameter("username");
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String password = request.getParameter("password");
         String rpassword = request.getParameter("re-password");
        System.out.println(username+" " +email+ " "+address+" "+password+" "+rpassword);
         try
         {
             db.insert(username,email,address,password);
             RequestDispatcher rd = request.getRequestDispatcher("verification.jsp");
             rd.forward(request,response);
         }
         catch (Exception e)
         {
             System.out.println(e);
         }
    }


}
