<%@ page import="java.util.LinkedList" %>
<%@ page import="enity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.13
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title></title>
</head>
<body>
<%

    Map<String,User> mapUser=new HashMap();
    mapUser.put("001",new User(1,"roy","123456"));
    mapUser.put("002",new User(2,"jack","123456"));
    mapUser.put("003",new User(3,"rose","123456"));
    pageContext.setAttribute("mapUser",mapUser);
%>

     <c:choose>
         <c:when test="${!empty sessionScope.user}">
             您好！${sessionScope.user.username}<br>

             <table border="1" width="400px">
                 <tr><th colspan="3">用户信息</th></tr>
                 <tr><th>编号</th><th>用户名</th><th>密码</th></tr>
             <c:forEach items="${pageScope.mapUser}" var="entry">
                 <tr> <td>${entry.key}</td>
                     <td> ${entry.value.username}</td>
                     <td>${entry.value.password}</td>
                 </tr>
         </c:forEach>
             </table>
         </c:when>
         <c:otherwise>
             请先<a href="${pageContext.request.contextPath}/Login/login.jsp">登录</a>
         </c:otherwise>
     </c:choose>

</body>
</html>
