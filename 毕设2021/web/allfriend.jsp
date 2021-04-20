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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>好友信息</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
</head>
<center><nav class="ui inverted  attached segment">
    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">我的好友界面</h2>
        </div>
    </div>
</nav>

<hr>
<body style="background-image:url(img/s.jpg);
               background-repeat:no-repeat;
               background-attachment:fixed;
               background-size:100% 100%; ">
<center>
<form method="post" action="" >

<table border="1">
    <%

    InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
    SqlSessionFactory factory = builder.build(in);
    SqlSession session1 = factory.openSession();
    UserDao_1 userDao_1 = session1.getMapper(UserDao_1.class);
    List<Friends> list = userDao_1.findAllfriend();
    request.setAttribute("list",list);

    session1.close();
    in.close();

%>
    <tr>
        <td>修改</td>
        <td>删除</td>
        <td>id</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>QQ</td>
        <td>电话</td>
        <td>Email</td>
        <td>地址</td>
        <td>去往好友主页</td>
    </tr>
  <c:forEach items="${requestScope.list}" var="member">
      <tr>
            <input type="hidden" id="need" value="" name="need">
          <td><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateServlet';form.submit();" ></td>
          <td><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteServlet';form.submit();"></td>
          <td><input type="text" value="${member.id}" name="${member.id}id"></td>
          <td><input type="text" value="${member.name}" name="${member.id}name" ></td>
          <td><input type="text" value="${member.sex}" name="${member.id}sex"></td>
          <td><input type="text" value="${member.age}" name="${member.id}age"></td>
          <td><input type="text" value="${member.qq}" name="${member.id}qq"></td>
          <td><input type="text" value="${member.telephone} " name="${member.id}tel"></td>
          <td><input type="text" value="${member.email}" name="${member.id}email"></td>
          <td><input type="text" value="${member.address}" name="${member.id}address"></td>
          <%--<%session.setAttribute("name", "${member.id}id"); %>--%>
          <td><input type="submit" id="${member.id}"  value="去往好友主页" onclick="get(this.id);form.action='CaXunServlet';form.submit()"></input></td>
<%--<a href="show.jsp">ashkdjajksdhjkasdh</a>--%>


      </tr>
  </c:forEach>
    <table border="1">
        <tr>
            <td>操作</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>QQ</td>
            <td>电话</td>
            <td>Email</td>
            <td>地址</td>
        </tr>
        <hr>
        <tr>
            <td clospan="2"><input type="submit" value="增加" onclick="form.action='AddServlet';form.submit()"></td>
            <td><input type="text" value="" name="newname" ></td>
            <td><input type="text" value="" name="newsex"></td>
            <td><input type="text" value="" name="newage"></td>
            <td><input type="text" value="" name="newqq"></td>
            <td><input type="text" value="" name="newtel"></td>
            <td><input type="text" value="" name="newemail"></td>
            <td><input type="text" value="" name="newaddress"></td>
        </tr>
    </table>

<script>
    function get(a) {
        document.getElementById("need").value = a;

    }
</script>
</table>
</form>
</center>
<a href="index.jsp">返回主页</a>
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
</center>
</html>
