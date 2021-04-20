
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>注册界面</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<body style="background-image:url(img/s.jpg);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">我的博客个人界面</h2>
        </div>
    </div>
</nav>
<center>
    <form  class="ui form" action="ZhuCeServlet"  method="post" onsubmit="return check()">


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
                <input type="password" name="password" placeholder="密码" id="p1">
            </div>
        </tr>
        <br>
        <tr>
            <div class="six wide field">
                <%--<td>密 码：</td> <td><input type="password" name="password"></td>--%>
                <input type="password" name="repassword" placeholder="密码" id="p2">
            </div>
        </tr>
        <br>
    <%--<form action="ZhuCeServlet" method="post" onsubmit="return check()">--%>
        <%--<table border="3">--%>
<%----%>
        <%--<tr>--%>
<%----%>
            <%--<td>  用户名：</td><td><input type="text" name="userName" ></td>--%>
            <%--</tr>--%>
<%----%>
        <%--<tr>--%>
            <%--<td>密 码：</td><td><input type="password" name="password" id="p1"></td>--%>
        <%--</tr>--%>
<%----%>
<%----%>
       <%--<tr>--%>
<%----%>
           <%--<td> 确认密码:</td><td><input type="password" name="repassword" id="p2"></td>--%>
<%----%>
            <%--</tr>--%>
        <%--<tr>--%>
        <tr>
        <button class="ui red basic button"type="button"  onclick="window.location.href='login.jsp'" tabindex="5">
            返回登陆界面
        </button>
        <%--<td><input type="button" value="返回登录界面" onclick="window.location.href='login.jsp'"></td>--%>
        <button class="ui red basic button"type="submit"  onclick="panduan()" tabindex="5">
           注册
        </button>
       <%--<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册" onclick="panduan()" ></td>--%>
            </tr>
        <script type="text/javascript">
            var flag =true
            function check() {
                return flag;

            }
            function panduan() {

                var mima1 = document.getElementById("p1").value
                var mima2 = document.getElementById("p2").value
                if (mima1==mima2){
                    alert("两次密码一致")
                    return

                }else{
                    alert("两次密码不一致")
                    flag=false;
                    document.getElementById("p1").onfocus()
                    return
                }
            }
        </script>
        </table>
    </form>
</center>

<%--底部--%>
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
