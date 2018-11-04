<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.10
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@page isErrorPage="true"
        contentType="text/html;charset=GBK" language="java" %>
<html>
<head>
    <title>ErrorPage</title>
</head>
<body>
   系统正在维护中，请耐心等待。。。。
   <br>
   错误信息：<%=exception.getMessage()%>

</body>
</html>
