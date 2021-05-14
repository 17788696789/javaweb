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
<>
<head>
    <title>主站</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/me.css">
</head>

<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">欢迎来到系统推荐页面</h2>
            <a href="index.jsp" class="item">返回我的界面</a>
            <%--<a href="allfriend.jsp" class="item">查询所有好友信息</a>--%>
            <%--<a href="queryByName.jsp" class="item">按姓名模糊查询好友信息</a>--%>
            <%--<a href="findblog.jsp" class="item">查询以往的博客</a>--%>
            <%--<div class="right item">--%>
                <%--<div class="ui icon input">--%>
                    <%--<input type="text" placeholder="搜索以往的博客......">--%>
                    <%--<i class="search link icon"></i>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
</nav>
<div class="m-padded-tb-large">
<div class="ui container">
    <div class="ui grid">
        <div class="eleven wide column">
            <div class="ui top attached segment">
                <div class="ui middle aligend two column grid">
                    <div class="column">
                        <h3 class="ui teal header">所有博客</h3>
                    </div>
                    <div class="right aligend column">
                        <%--共<h3 class="ui orange header m-inline-block">12</h3>篇--%>

                    </div>
                </div>
            </div>
            <div class="ui attached segment">
            <div class="ui segment">
                <div class="ui grid">
                    <div class="fifteen wide column">
    <form method="post" action="" >

        <table class="ui selectable table">
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


                <input type="hidden" id="need" value="" name="need">

                <a href="vue.html?id=${member.id}">

                    <img src="https://picsum.photos/id/1023/800/100" class="ui rounded image">
                    <h3 class="ui header">发布者：${member.username}</h3>
                    <p>${member.title}</p>
                    <div class=" ui divider"></div>
                <%--<td><input type="text" value="${member.blog}" name="${member.userid}blog"></td>--%>
                </a>
                    <%--<%session.setAttribute("name", "${member.id}id"); %>--%>



            </c:forEach>

        </table>
    </form>
                    </div>
                    <div class="one wide column">

                    </div>

                </div>
            </div>
            </div>
        </div>



        <div class="five wide column">
            <div class="ui segment">
                <div class="ui top attached segment">
                    <div class="ui middle aligend two column grid">
                        <div class="column">
                            <h3 class="ui teal header">系统推荐</h3>
                        </div>
                        <div class="right aligend column">
                            <%--共<h3 class="ui orange header m-inline-block">12</h3>篇--%>

                        </div>
                    </div>
                </div>
            </div>
            <div class="ui attached segment">
                <div class="ui segment">

    <form method="post" action="" >

        <table class="ui selectable table">
            <%

                InputStream on = Resources.getResourceAsStream("SqlMapper.xml");
                SqlSessionFactoryBuilder builde = new SqlSessionFactoryBuilder();
                SqlSessionFactory factorys = builde.build(on);
                SqlSession session3 = factorys.openSession();
                UserDao_1 userDao = session3.getMapper(UserDao_1.class);
                int userid = (int)request.getSession().getAttribute("userId");
                int tag =(int)request.getSession().getAttribute("tag");
                List<UserBlog> lists = userDao.findTuiJianBlog(tag,userid);
                request.setAttribute("list",lists);

                session3.close();
                on.close();

            %>

            <c:forEach items="${requestScope.list}" var="member">


                    <input type="hidden" id="need" value="" name="need">

                        <a href="vue.html?id=${member.id}">

                            <img src="https://picsum.photos/id/1057/800/100" class="ui rounded image">
                            <h3 class="ui header">发布者：${member.username}</h3>
                            <p>${member.title}</p>
                                <%--<td><input type="text" value="${member.blog}" name="${member.userid}blog"></td>--%>
                        </a>

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
        </div>
    </div>

</div>
</div>
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
