import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");



        String email =request.getParameter("email");
                     String pasword=request.getParameter("password");
                     try{
                         DatabaseDao db = new DatabaseDao();
                         db.getData(email,pasword);
                         PrintWriter out = response.getWriter();
                         out.println("<HTML><HEAD><TITLE>Hello World!</TITLE>"+
                                 "</HEAD><BODY>you are login successfully</BODY></HTML>");
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
