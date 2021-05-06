

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <title>登录</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="./css/me.css">
</head>
<body style="background-image:url(img/c.jpg);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">欢迎来到我的博客</h2>
        </div>
    </div>
</nav>
<center>

<form  class="ui form" action="loginServlet"  method="post">


  <br>
    <tr>
        <div class="six wide field">
    <%--<td>用户名：</td><td><input type="text" name="userName" ></td>--%>
        <input type="text" name="userName" placeholder="用户名">
        </div>
    </tr>
  <br>
    <tr>
        <div class="six wide field">
        <%--<td>密 码：</td> <td><input type="password" name="password"></td>--%>
        <input type="password" name="password" placeholder="密码">
        </div>
    </tr>
  <br>


  <br>
    <tr>
        <button class="ui red basic button"type="submit" tabindex="5">
            登陆

        </button>


        <button class="ui red basic button"type="reset"tabindex="5">

            重置
        </button>

        <button class="ui red basic button"type="button"  onclick="window.location.href='Register.jsp';"tabindex="5">

            注册
        </button>

    </tr>



    </form>
</center>
<%--底部--%>

<footer  class="ui inverted vertical segment" style="position: fixed;bottom:0;width: 100%">
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
