<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.11
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PageContext2</title>
</head>
<body>
    <%
        //获取域对象
        out.write("messagePage="+pageContext.getAttribute("messagePage")+"<br>");
        String messageRequest = (String)pageContext.getAttribute("messageRequest", PageContext.REQUEST_SCOPE);
        out.write("messageRequest="+messageRequest+"<br>");
        String messageSession = (String) pageContext.getAttribute("messageSession", PageContext.SESSION_SCOPE);
        out.write("messageSession="+messageSession+"<br>");
        String messageAppliaction = (String) pageContext.getAttribute("messageApplication",PageContext.APPLICATION_SCOPE);
        out.write("messageApplication="+messageAppliaction+"<br>");

    %>
</body>
</html>
