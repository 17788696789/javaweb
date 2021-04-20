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
<%@ page import="com.dao.UserBlog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.dao.UserBlog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主站</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<body style="background-image:url(img/r.gif);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">欢迎来到系统推荐页面</h2>
            <a href="index.jsp" class="item">返回我的界面</a>
            <a href="allfriend.jsp" class="item">查询所有好友信息</a>
            <a href="queryByName.jsp" class="item">按姓名模糊查询好友信息</a>
            <a href="findblog.jsp" class="item">查询以往的博客</a>
            <div class="right item">
                <div class="ui icon input">
                    <input type="text" placeholder="搜索以往的博客......">
                    <i class="search link icon"></i>
                </div>
            </div>
        </div>
    </div>
</nav>
<div style="text-align: center">
    <form method="post" action="" >

        <table border="0">
                <%

    InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
    SqlSessionFactory factory = builder.build(in);
    SqlSession session1 = factory.openSession();
    UserDao_1 userDao_1 = session1.getMapper(UserDao_1.class);
    List<UserBlog> list = userDao_1.findAllUserBlog();
    request.setAttribute("list",list);

    session1.close();
    in.close();

%>

            <c:forEach items="${requestScope.list}" var="member">
            <div style="height: 200px;display: block;padding-left: 600px">

                <input type="hidden" id="need" value="" name="need">
                <div style="height: 100%;width:400px;float: left">
                    <textarea rows="10" cols="30" id="${member.userid}" style="height: 100%;width: 100%"  name="${member.userid}blog">${member.blog}</textarea>
                </div>
                <%--<td><input type="text" value="${member.blog}" name="${member.userid}blog"></td>--%>
                    <div style="float: left">
                        <textarea type="text"  name="${member.userid}username" >${member.username}</textarea></div>
                    <div style="float: left">
                        <textarea type="text"  name="${member.userid}userid">${member.userid}</textarea></div>
            </div>
                    <%--<%session.setAttribute("name", "${member.id}id"); %>--%>



            </c:forEach>
            <script>
                function get(a) {
                    document.getElementById("need").value = a;

                }
            </script>
        </table>
    </form>
</div>














<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

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

</body>
</html>
