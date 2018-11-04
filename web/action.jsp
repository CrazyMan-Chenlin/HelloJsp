<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.13
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动作标签</title>
</head>
<body>
      <%--<%
          request.getRequestDispatcher("/el2.jsp").forward(request,response);
      %>--%>
     <%--forward标签：<jsp:forward page="action2.jsp">
          <jsp:param name="name" value="roy"/>
          <jsp:param name="id" value="1"/>
      </jsp:forward>
      参数标签:--%>
      <%--include 静态包含，先合并再翻译，无法传递参数。
      <%@include file="action2.jsp"%>--%>
     <jsp:include page="action2.jsp">
         <jsp:param name="name" value="roy"/>
     </jsp:include>
      include标签： 动态包含，与静态包含的区别是先翻译后再合并，可以传递参数给被包含页面
</body>
</html>
