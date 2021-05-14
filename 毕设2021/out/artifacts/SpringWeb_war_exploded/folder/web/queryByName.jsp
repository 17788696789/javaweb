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
    <style type="text/css">
        * {

            box-sizing:border-box;

        }

        div.search {

            padding:10px 0;

        }

        form {

            position:relative;

            width:300px;

            margin:0 auto;

        }

        input,button {

            border:none;

            outline:none;

        }

        input {

            width:100%;

            height:42px;

            padding-left:13px;

        }

        button {

            height:42px;

            width:42px;

            cursor:pointer;

            position:absolute;

        }

        .bar input {

            border:2px solid #c5464a;

            border-radius:5px;

            background:transparent;

            top:0;

            right:0;

        }

        .bar button {

            background:#c5464a;

            border-radius:0 5px 5px 0;

            width:60px;

            top:0;

            right:0;

        }

        .bar button:before {

            content:"搜索";

            font-size:13px;

            color:#F9F0DA;

        }
    </style>
</head>

    <nav class="ui inverted  attached segment">
        <div class="ui container">
            <div class="ui inverted menu">
                <h2 class="ui teal header item">我的博客个人界面</h2>
                <a href="index.jsp" class="item">返回我的界面</a>
            </div>
        </div>
    </nav>

<hr>



<div class="search bar">
        <form action="QuNameServlet" method="post"  >
        <input type="text" value="" name="mohu"   placeholder="请输入要搜索的内容："  maxLength="100" autocomplete="off"/>
            <button  type="submit"  id="search-button" value="搜索"/>




        </form>
</div>

    <hr>
<form method="post" action="" >
    <table class="ui selectable table">
        <%
//        List<Friends> evo = (List<Friends>) request.getAttribute("list");
//        request.setAttribute("list",evo);
//        session.setAttribute("list",evo);
//        List<Friends> uzi = (List<Friends>) session.getAttribute("list");
//        request.setAttribute("list",uzi);
//            System.out.println("uzi="+uzi);
    %>

        <c:forEach items="${requestScope.list}" var="member">


                <input type="hidden" id="need" value="" name="need">
                <div class="ui card">
                    <div class="image">
                        <img  src="https://picsum.photos/id/1003/200/200">
                    </div>
                    <div class="content">
                        <div class="header"><h2>博客发布者的信息</h2></div>
                        <div class="mata"> <h3>用户名：${member.name}</h3></br>
                            <h3>用户id：${member.userid}</h3>

                        </div>

                    </div>

                <div class="extra content">

                        <input class="ui teal button " type="submit" id="${member.userid}" onclick="get(this.id);form.action='CaXunServlet';form.submit();" value="前往好友主页">



                </div>
                </div>

        </c:forEach>


    </table>
</form>



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
<script>
    function get(a) {
        document.getElementById("need").value = a;
        // document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML

    }
</script>
</body>

</html>
