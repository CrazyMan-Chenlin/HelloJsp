<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.11
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  buffer="1kb" %>

  <%
         for (int i=0;i<1016;i++){
             out.write("1");
         }
      // out.write("abc");
       //out.flush();//清空缓冲区
      System.out.println(out.getBufferSize());//得到缓冲区大小
      System.out.println(out.getRemaining());//得到剩余缓冲区的大小
      response.getWriter().write("123");
  %>

