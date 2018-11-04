<%@ page import="enity.User" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.12
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el2</title>
</head>
<body>
     <%
         String email="269344402@qq.com";
          pageContext.setAttribute("email",email);
     %>
         普通字符串:${email}
         <hr>
        <%
            User user=new User(1,"chen","123456");
            pageContext.setAttribute("user",user);

        %>
          获取普通对象：${user } <br>
              <%--调用toString方法--%>
         对象属性:${user.username} - ${user.password}
               <%--调用getUsername()和调用getPassword()--%>
          <hr>
        <%
            User[] arrUser=new User[3];
            arrUser[0]=new User(1,"roy","123456");
            arrUser[1]=new User(2,"jack","123456");
            arrUser[2]=new User(3,"rose","123456");
            pageContext.setAttribute("arrUser",arrUser);
              List<User> listUser=new LinkedList();
              listUser.add(new User(1,"roy","123456"));
            listUser.add(new User(2,"jack","123456"));
            listUser.add(new User(3,"rose","123456"));
            pageContext.setAttribute("listUser",listUser);
        %>
     数组:${arrUser[0]}<br>
     ${arrUser[1]}<br>
     ${arrUser[2]}<br>
     <hr>
      List:${ listUser.get(0)}<br>
     ${ listUser.get(1)}<br>
     ${ listUser.get(2)}<br>
         <%
             Map<String,User> mapUser=new HashMap();
             mapUser.put("001",new User(1,"roy","123456"));
             mapUser.put("002",new User(2,"jack","123456"));
             mapUser.put("003",new User(3,"rose","123456"));
              pageContext.setAttribute("mapUser",mapUser);
         %>
            <hr>
        Map:${mapUser.get("001")}<br>
     ${mapUser.get("002")}<br>
     ${mapUser.get("003")}<br>
</body>
</html>
