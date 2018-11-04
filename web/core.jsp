<%@ page import="java.util.LinkedList" %>
<%@ page import="enity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: chenlin
  Date: 2018.7.13
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- uri：导入标签库uri的名称，在standard.jar包中
 prefix: 标签库的前缀，通用和tld文件的short-name名称相同--%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>core</title>
</head>
<body>
 <%--
  赋值使用：给域对象赋值
  <c:set></c:set>
 --%>
  <%--<%
      String name="Roy";
      pageContext.setAttribute("name",name);
  %>--%>
    <%--var:数据名称
   value:保存的数据值
   scope：保存到某个域    page/request/session/application--%>
   <c:set var="name" value="Roy" scope="page"/>
  ${name}
<hr>
   <%--<c:out/>相比 ${name} 有条件判空功能--%>
    <%--value:代表获取的值,内嵌el表达式
    defalut：可以输入默认值
     escapeXml:是否转义--%>
     <c:out value="${name}" default="<h1>默认值</h1>" escapeXml="false"/>
    <hr>
  <%--<c:if test=""/> 单条件判断
     test内部可以表示el逻辑表达式
  --%>
    <c:if test="${10>8}">
        <input type="button" value="按钮"/>
    </c:if>
  <hr>
<%--<c:choose> <c:when test=""></c:otherwise>
      多条件判断
--%>
      <c:set var="user" value="ROY" scope="session"/>
      <c:choose>
      <c:when test="${!empty sessionScope.user}">
          欢迎回来，您的用户名是ROY.<a href="">退出登陆</a>
      </c:when>
          <c:otherwise>
           请先<a href="">登陆</a>或者<a href="">注册</a>
          </c:otherwise>
      </c:choose>
        <hr>
      <%
          List<User> listUser=new LinkedList();
          listUser.add(new User(1,"roy","123456"));
          listUser.add(new User(2,"jack","123456"));
          listUser.add(new User(3,"rose","123456"));
          pageContext.setAttribute("listUser",listUser);
          Map<String,User> mapUser=new HashMap();
          mapUser.put("001",new User(1,"roy","123456"));
          mapUser.put("002",new User(2,"jack","123456"));
          mapUser.put("003",new User(3,"rose","123456"));
          pageContext.setAttribute("mapUser",mapUser);
      %>
             <%--<c:forEach/>
             begin：表示从第几个元素开始遍历，默认从0开始
             end：遍历到哪个元素位置，默认到最后
             step：遍历步长，默认1
             item：需要遍历的数据
             var: 每个元素的名称
             varStatus：当前对象的状态
             --%>
          <c:forEach   items="${listUser}" var="User" varStatus="varSta">
      ${varSta.count} -- ${User.username} --${User.password}<br>
          </c:forEach>
        <%-- 遍历Map集合时，将Map每个对象用entry封装，Entry封装键对象+value对象，通过getKey()和getValue对象封装--%>
          <c:forEach items="${mapUser}" var="entry">
             编号：${entry.key} &nbsp;&nbsp; username:${entry.value.username} &nbsp;&nbsp;password:${entry.value.password}<br>
          </c:forEach>
          <c:set var="str" value="java-net-php" scope="page"/>

<%-- <%
                String str = (String) pageContext.getAttribute("str");
                String[] arrStr = str.split("-");
                for (int i = 0; i <arrStr.length ; i++) {
                     out.write(arrStr[i]+",");
                }
            %>--%>
           <%--遍历特殊字符串：
           <c:forTokens items="" delims=""/>
            items:表示遍历的数据
            delims：指定分隔符
            var：每个内容的名称
           --%>
          <c:forTokens items="${str}" delims="-" var="s">
              ${s}
          </c:forTokens>
               <hr>
              <%--重定向标签
              <c:redirect>--%>
           <%-- <%
                response.sendRedirect(request.getContextPath()+"/el4.jsp");
            %>--%>
                <c:redirect url="el4.jsp">
                 </c:redirect>

</body>
</html>
