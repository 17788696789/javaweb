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
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/me.css">
</head>

<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h1 class="ui teal header item">按关键字查找博客内容</h1>
            <a href="index.jsp" class="item">返回我的界面</a>
        </div>
    </div>
</nav>
    <br>
    <br>
    <center>
        <table class="ui selectable table">
            <form action="FindBlog" method="post">
                输入模糊查询的blog:<input type="text" value="" name="mohu" id="mohu" ><input type="submit" value="查询">
            </form>
        </table>


        <table class="ui selectable table">
            <tr>
                <td>blog内容</td>
            </tr>
            <c:forEach items="${requestScope.list}" var="member">

                <tr>
                    <td><div class="ui action input"><input type="text" value="${member.blog}" name="${member.userid}blog"></div></td>
                </tr>
            </c:forEach>

        </table>
        <footer class="ui inverted  vertical segment"style="position: fixed;bottom:0;width: 100%">
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
</body>
</html>
