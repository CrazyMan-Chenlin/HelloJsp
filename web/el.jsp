<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.12
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL</title>
</head>
<body>
             <%
                 String name="chen";
             %>
<%=name%>
             <%
               // pageContext.setAttribute("name",name);
                 pageContext.setAttribute("name",name,PageContext.REQUEST_SCOPE);
             %>
 <br>
            <%--  输出的是域对象，所以无效--%>
               EL表达式:${name} <br>
          <%-- 自动搜索
          等价于：<%=pageContext.findAttribute("name")%>--%>
              <%--从指定域中搜索--%>
               从指定域中取出: request域：${requestScope.name}

</body>
</html>
