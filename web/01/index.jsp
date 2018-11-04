<%@ page import="enity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.10
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2 style="text-align: center">添加联系人</h2>
  <hr>
     <table border="1px" width="500px" align="center">
       <tr>
         <th>id</th>
         <th>username</th>
         <th>password</th>
       </tr>
    <%
       List<User> listUser=(List<User>) request.getAttribute("list");
      for (User user:listUser
           ) {
        %>
       <tr>
         <td><%=user.getId()%></td>
         <td><%=user.getUsername()%></td>
         <td><%=user.getPassword()%></td>
       </tr>
       <%
      }
    %>
     </table>
  </body>
</html>
