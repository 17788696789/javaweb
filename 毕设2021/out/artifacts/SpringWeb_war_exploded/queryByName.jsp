<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.dao.UserDao_1" %>
<%@ page import="com.dao.Friends" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模糊查询</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/me.css">
</head>
<center>
    <nav class="ui inverted  attached segment">
        <div class="ui container">
            <div class="ui inverted menu">
                <h2 class="ui teal header item">我的博客个人界面</h2>
                <a href="index.jsp" class="item">返回我的界面</a>
            </div>
        </div>
    </nav>

<hr>

<center>
    <table class="ui selectable table">
        <form action="QuNameServlet" method="post">
        输入模糊查询的字:<input type="text" value="" name="mohu" id="mohu" >
            <div class="ui action input"><input type="submit" value="查询"/></div>
        </form>
    </table>

    <hr>
    <table class="ui selectable table">
        <%
//        List<Friends> evo = (List<Friends>) request.getAttribute("list");
//        request.setAttribute("list",evo);
//        session.setAttribute("list",evo);
//        List<Friends> uzi = (List<Friends>) session.getAttribute("list");
//        request.setAttribute("list",uzi);
//            System.out.println("uzi="+uzi);
    %>
            <tr>
                <td>id</td>
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>QQ</td>
                <td>电话</td>
                <td>Email</td>
                <td>地址</td>
            </tr>
        <c:forEach items="${requestScope.list}" var="member">
            <tr>
                <td><div class="ui action input"><input type="text" value="${member.id}" name="${member.id}id"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.name}" name="${member.id}name" ></div></td>
                <td><div class="ui action input"><input type="text" value="${member.sex}" name="${member.id}sex"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.age}" name="${member.id}age"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.qq}" name="${member.id}qq"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.telephone} " name="${member.id}tel"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.email}" name="${member.id}email"></div></td>
                <td><div class="ui action input"><input type="text" value="${member.address}" name="${member.id}address"></div></td>
            </tr>
        </c:forEach>


    </table>
    <a href="allfriend.jsp">返回上页</a>
</center>

<%--底部--%>

<footer class="ui inverted  vertical segment" style="position: fixed;bottom:0;width: 100%">
    <div class="ui container" >
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
</body>
</center>
</html>
