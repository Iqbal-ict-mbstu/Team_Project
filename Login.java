import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Dell on 3/9/2020.
 */
@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                     String email =request.getParameter("email");
                     String pasword=request.getParameter("password");
                     try{
                         DatabaseDao db = new DatabaseDao();
                         db.getData(email,pasword);
                         response.sendRedirect("index.jsp");
                     }
                     catch (Exception e)
                     {
                         System.out.println(e);
                     }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
