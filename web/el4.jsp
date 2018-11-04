<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.12
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL 11个内置对象</title>
</head>
<body>
          <%--
             <%=request.getContextPath()//pageContext获取上下文路径%>--%>
          pageContext对象：
              el表达式：${pageContext.request.contextPath}  <br>
             <%-- 4个与对象pageScope,requestScope,sessionScope,applicationScope--%>
          param对象
          <%--<%=request.getParameter("name")%>--%>
          ${param['name']} <br>
        <%--  <%=request.getParameterValues("name")%>--%>
          ${paramValues['name'][0]} -${paramValues['name'][1]}<br>
            head对象：
         <%-- <%=request.getHeader("host")%>--%>
         ${header['host']} <br>
            <%--<%=request.getHeaders("host").nextElement()%>--%>
             ${headerValues['host'][0]}<br>
           cookie对象
           <%--%=request.getCookies()[0].getValue()%>--%>
           ${cookie['JSESSIONID'].name}-${cookie['JSESSIONID'].value}<br>
          全局对象
          <%-- <%=application.getInitParameter("AAA")%>--%>
               ${initParam['AAA']}



</body>
</html>
