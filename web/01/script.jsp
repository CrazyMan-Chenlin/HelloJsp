<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.10
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
     String name="chenlin";
 %>
<%=name %> </br>
   <%
       Random random=new Random();
       float num=random.nextFloat();
       out.println("���С����"+num);
   %>
 <!-- ��ʾ��out.write(name) -->
    <%
        for (int i = 1; i <6 ; i++) {
        %>
           <h<%=i%>>����<%=i%></h<%=i%>>
  <%
        }
    %> <br>
<hr>
<h2>�žų˷���</h2>
<%
    for (int i = 1; i <=9 ; i++) {
        for (int j = 1; j <=i; j++) {
           out.print(i+"*"+j+"="+i*j+"      ");
        }
       %>
 <br>
 <%
    }
%>
       <%--��������--%>
    <%!
       String email="269344402@qq.com";
       public void sayHello(){
           System.out.println("hello,jsp");
       }
    %>

     <%--jspע�Ͳ��������htmlע�ͻ����--%>

</body>
</html>
