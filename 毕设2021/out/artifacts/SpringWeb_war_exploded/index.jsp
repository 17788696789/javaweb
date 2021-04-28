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
<html>
<head>
    <title>主页</title>
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
    <a href="login.jsp" class="item">返回登录界面</a>
    <a href="allfriend.jsp" class="item">查询所有好友信息</a>
    <a href="queryByName.jsp" class="item">按姓名模糊查询好友信息</a>
    <a href="findblog.jsp" class="item">查询以往的博客</a>
    <a href="main.jsp" class="item">前往主站</a>
    <div class="right item">
        <div class="ui icon input">
        <input type="text" placeholder="搜索以往的博客......">
            <i class="search link icon"></i>
        </div>
    </div>
</div>
</div>
</nav>
    <%--中间--%>
    <div style="text-align: center">


                    <br>
                    <br>
                    <br>
        <div class="ui attached message" >
            <div class="header">欢迎来到我们的站点！ </div>

        </div>
<form method="post" action=""  class="ui  form attached fluid segment">
                       <table  class="ui selectable table" border="0" style="text-align: center">
                    <%
                        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
                        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
                        SqlSessionFactory factory = builder.build(in);
                        SqlSession session2 = factory.openSession();
                        UserDao_1 userDao_1 = session2.getMapper(UserDao_1.class);
                        int id = (int)request.getSession().getAttribute("userId");
                        List<UserBlog> list = userDao_1.findAllblog(id);
                        request.setAttribute("list",list);

                        session2.close();
                        in.close();

                    %>
                    <%--<tr>--%>


                        <%--<td>历史博客</td>--%>
                        <%--<td>删除</td>--%>
                        <%--<td>修改</td>--%>

                    <%--</tr>--%>
                    <c:forEach items="${requestScope.list}" var="member" >
                        <div style="height: 200px;display: block;padding-left: 600px" >
                            <input type="hidden" id="need" value="" name="need">
                            <%--<td><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateServlet';form.submit();" ></td>--%>
                            <%--<td><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteServlet';form.submit();"></td>--%>

                            <div style="height: 100%;width:400px;float: left">
                                <textarea rows="10" cols="30" id="${member.id}" style="height: 100%;width: 100%"  name="${member.id}blog">${member.blog}</textarea></div>
                                <%--<div style="float: left"><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteBlog';form.submit();"></div>--%>
                            <%--<div style="float: left"><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateBlog';form.submit();"></div>--%>
                            <div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">

                                修改
                            </button></div>
                            <div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">

                                删除
                            </button></div>
                        </div>

                        </div>
                    </c:forEach>





                    <script>
                        function get(a) {
                            document.getElementById("need").value = a;
                            // document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML

                        }
                    </script>
                </table>
            </form>

                    <br>

                    <br>


        <form class="ui reply form" action="WriteBlog"  method="post">
            <div style="height: 200px;width:1200px;padding-left: 600px" class="field"  >


                <textarea rows="10" cols="30" name="newblog"  placeholder="输入你想说的话" /></textarea>
                    <%--<td>博客内容：</td><td><input type="text" name="newblog" ></td>--%>
            </div>

            <div class="ui selection dropdown">
                <input type="hidden" name="tag">
                <i class="dropdown icon"></i>
                <div class="default text">类别</div>
                <div class="menu" tabindex="-1">
                    <div class="item" data-value="0">知识</div>
                    <div class="item" data-value="1">生活</div>
                    <div class="item" data-value="2">音乐</div>
                    <div class="item" data-value="3">娱乐</div>
                    <div class="item" data-value="4">资讯</div>
                </div>
            </div>

            <button class="ui red basic button" type="submit" tabindex="5">
                发布

            </button>
        </form>









        </form>
            </center>
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

        </center>

    </div>

    <%--底部--%>
    <footer class="ui inverted  vertical segment">
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
<script>
    $(function(){
        $('.ui.selection.dropdown').dropdown();
    });
</script>
</body>
</html>
