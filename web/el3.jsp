<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.12
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表达式</title>
</head>
<body>
      <%
          String name=null; //空字符串与null 都是null
          pageContext.setAttribute("name",name);

      %>
        判空：      <%--无论name=null或者name="",都能判断--%>
      ${empty name}
</body>
</html>
