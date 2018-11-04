<%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.11
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PageContext</title>
</head>
<body>
   <%
            //pageContext
             //获取其他8个内置对象
       out.write("是否相等:"+(pageContext.getRequest()==request)+"<br>");
       out.write("是否相等:"+(pageContext.getResponse()==response)+"<br>");

       // 设置page域对象
        pageContext.setAttribute("messagePage","messagePage");
        //设置request+session+application域对象
        pageContext.setAttribute("messageRequest","messageRequest",PageContext.REQUEST_SCOPE);
       pageContext.setAttribute("messageSession","messageSession",PageContext.SESSION_SCOPE);
       pageContext.setAttribute("messageApplication","messageApplication",PageContext.APPLICATION_SCOPE);
      // request.getRequestDispatcher("/PageContext2.jsp").forward(request,response);

   %>
      <%--  <%
            //获取域对象
            out.write("messagePage="+pageContext.getAttribute("messagePage")+"<br>");
            String messageRequest = (String)pageContext.getAttribute("messageRequest", PageContext.REQUEST_SCOPE);
            out.write("messageRequest="+messageRequest+"<br>");
            String messageSession = (String) pageContext.getAttribute("messageSession", PageContext.SESSION_SCOPE);
            out.write("messageSession="+messageSession+"<br>");
            String messageAppliaction = (String) pageContext.getAttribute("messageApplication",PageContext.APPLICATION_SCOPE);
            out.write("messageApplication="+messageAppliaction+"<br>");
            域对象范围大小
            page<request<session<application
        %>--%>
<%
    //如果attribute同名，搜索是从小到大进行搜索
    out.write("message="+pageContext.findAttribute("messageRequest"));
%>
</body>
</html>
