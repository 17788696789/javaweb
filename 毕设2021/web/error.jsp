
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ERROR</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<body style="background-image:url(img/s.jpg);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<center>>
    <nav class="ui inverted  attached segment">
        <div class="ui container">
            <div class="ui inverted menu">
                <h4 class="ui teal header item">用户名或者密码错误</h4>
            </div>
        </div>
    </nav>
    <button class="ui green basic button"onclick="window.location.href='login.jsp';">
     <h4>返回登录页面</h4>
    </button>
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
