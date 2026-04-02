package simuit;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// Ithu thaan unga URL mapping. index.html-la action="LoginServlet" nu irukanum.
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. HTML-la irunthu username matrum password-ah vaangurom
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        // Session get pannu
        HttpSession session = request.getSession();

        // 2. Simple validation (Namma "admin" & "1234" nu check panrom)
        if ("admin".equals(user) && "1234".equals(pass)) {
            // Session-la user-ah set pannu
            session.setAttribute("user", user);
            // Correct-ana food page-ku pogum
            response.sendRedirect("index.jsp");
        } else {
            // Thappu-na thirumba login page-ke redirect aagum with error
            response.sendRedirect("login.jsp?error=1");
        }
    }
}