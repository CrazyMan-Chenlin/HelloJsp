<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.10
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>ϵͳ��ǰʱ��</h2>
<%
    Date date=new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy��MM��dd�� hhʱ:mm��:ss��");
    String format = sdf.format(date);
    out.print(format);
%>

</body>
</html>
