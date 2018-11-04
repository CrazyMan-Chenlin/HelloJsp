<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.13
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h2 style="text-align: center">用户登录</h2>
<hr>
  <form method="get" action=${pageContext.request.contextPath}/LoginServlet>
      <table border="1px"  width="300px" align="center">
      <tr><th>用户名：</th><td><input type="text" name="username"/></td></tr>
       <tr><th>密码：</th><td><input type="text" name="password"/></td></tr>
      <tr><td style="text-align: center" colspan="2"><input type="submit" value="登录" /></td></tr>
      </table>
  </form>
</body>
</html>
