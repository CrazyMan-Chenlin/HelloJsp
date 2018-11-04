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
       out.println("随机小数："+num);
   %>
 <!-- 表示从out.write(name) -->
    <%
        for (int i = 1; i <6 ; i++) {
        %>
           <h<%=i%>>标题<%=i%></h<%=i%>>
  <%
        }
    %> <br>
<hr>
<h2>九九乘法表</h2>
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
       <%--声明变量--%>
    <%!
       String email="269344402@qq.com";
       public void sayHello(){
           System.out.println("hello,jsp");
       }
    %>

     <%--jsp注释不会输出，html注释会输出--%>

</body>
</html>
