<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/4/5 0005
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%><%@page import="javax.servlet.ServletContext" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.dao.UserDao_1" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.User" %>
<%@ page import="com.dao.Friends" %>
<%@ page import="com.service.UserService"%>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.dao.UserBlog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<body style="background-image:url(img/s.jpg);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h1 class="ui teal header item">展示好友博客内容</h1>
            <a href="index.jsp" class="item">返回我的界面</a>
        </div>
    </div>
</nav>
<center>
<table border="10">
<%

    InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
    SqlSessionFactory factory = builder.build(in);
    SqlSession session1 = factory.openSession();
    UserDao_1 userDao_1 = session1.getMapper(UserDao_1.class);

    int check;
    check=Integer.parseInt(request.getParameter("need"));
    List<UserBlog> list = userDao_1. selectFriendBlogById(check);
    request.setAttribute("list",list);
    session1.close();
    in.close();

%>

<tr>


    <td>历史博客</td>

</tr>
<c:forEach items="${requestScope.list}" var="member">
    <tr>
        <input type="hidden" id="need" value="" name="need">
            <%--<td><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateServlet';form.submit();" ></td>--%>
            <%--<td><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteServlet';form.submit();"></td>--%>

        <td><input type="text" value="${member.blog}" name="${member.userid}blog"></td>

    </tr>
</c:forEach>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

</table>
</center>
<footer class="ui inverted  vertical segment" style="position: fixed;bottom:0;width: 100%">
    <div class="ui container">
        <div class="ui inverted  grid">
            <div class="three wide column">
                <img src="img/德克萨斯.jpg" class="ui rounded image" alt="" style="width: 100px">
            </div>
            <div class="three wide column"></div>
            <div class="three wide column"></div>
            <div class="seven wide column"></div>
        </div>

    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<%--name参数的值为： <%=session.getAttribute("name")%>--%>
</body>
</html>
