import enity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet",urlPatterns ="/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String username=request.getParameter("username");
          String password=request.getParameter("password");
          if (username!=null&&!username.equals("")&&password!=null&&!password.equals("")){
              HttpSession session = request.getSession(true);
              User user=new User(1,username,password);
              String ip = request.getRemoteHost();
              session.setAttribute("user",user);
              session.setAttribute("ip",ip);
              request.getRequestDispatcher("/Login/index.jsp").forward(request,response);
          }else{
              request.getRequestDispatcher("/Login/login.jsp").forward(request,response);
          }
    }
}
