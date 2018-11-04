package servlet;

import enity.User;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "ListUserServlet",urlPatterns = "/ListUserServlet")
public class ListUserServle extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
          doGet(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
           List<User> list=new LinkedList();
           list.add(new User(1,"roy","123456"));
        list.add(new User(2,"kobe","654654"));
        list.add(new User(3,"jack","646546"));
        request.setAttribute("list",list);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}
