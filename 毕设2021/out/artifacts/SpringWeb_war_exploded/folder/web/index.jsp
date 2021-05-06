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
<link rel="stylesheet" href="./css/me.css">
    <link rel="stylesheet" href="./lib/editormd/css/editormd.min.css">
</head>
<body>
<nav class="ui inverted  attached segment m-padded-tb-mini">

    <div class="ui container">
<div class="ui inverted menu">
<h2 class="ui teal header item">我的博客个人界面</h2>
    <a href="login.jsp" class="item"><i class="home icon"></i>返回登录界面</a>
    <a href="allfriend.jsp" class="item"><i class="idea icon"></i>查询所有好友信息</a>
    <a href="queryByName.jsp" class="item"><i class="tags icon"></i>按姓名模糊查询好友信息</a>
    <a href="findblog.jsp" class="item"><i class="info icon"></i>查询以往的博客</a>
    <a href="main.jsp" class="item"><i class="setting icon"></i>前往主站</a>

</div>
</div>
</nav>
    <%--中间--%>
<%--<%--%>
    <%--InputStream in = Resources.getResourceAsStream("SqlMapper.xml");--%>
    <%--SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();--%>
    <%--SqlSessionFactory factory = builder.build(in);--%>
    <%--SqlSession session2 = factory.openSession();--%>
    <%--UserDao_1 userDao_1 = session2.getMapper(UserDao_1.class);--%>
    <%--int id = (int)request.getSession().getAttribute("userId");--%>
    <%--List<UserBlog> list = userDao_1.findAllblog(id);--%>
    <%--request.setAttribute("list",list);--%>

    <%--session2.close();--%>
    <%--in.close();--%>

<%--%>--%>

<div class="m-padded-tb-large">

<div class="ui container">
   <div class="ui grid">
       <div class="eleven wide column">
           <div class="ui top attached segment">
               <div class="ui middle aligend two column grid">
                   <div class="column">
                       <h3 class="ui teal header">历史博客</h3>
                   </div>
                   <div class="right aligend column">
                       <%--共<h3 class="ui orange header m-inline-block">12</h3>篇--%>

                   </div>
                </div>
           </div>
           <div class="ui attached segment">
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
                       <c:forEach items="${requestScope.list}" var="member" >
                       <div style="height: 200px;display: block;" >
                           <input type="hidden" id="need" value="" name="need">

                           <div style="height: 100%;width:400px;float: left">
                               <textarea rows="10" cols="30" id="${member.id}" style="height: 100%;width: 100%"  name="${member.id}blog">${member.blog}</textarea></div>
                           <div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">
                               修改
                           </button></div>
                           <div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">
                               删除
                           </button></div>
                       </div>
                               </c:forEach>
                   </table>
               </form>
           </div>
           </div>

       <div class="five wide column">
           <div class="ui segment">

           </div>
       </div>
   </div>
   </div>
</div>





                    <br>
                    <br>
                    <br>

<%--<form method="post" action=""  class="ui  form attached fluid segment">--%>
                       <%--<table  class="ui selectable table" border="0" style="text-align: center">--%>
                    <%--<%--%>
                        <%--InputStream in = Resources.getResourceAsStream("SqlMapper.xml");--%>
                        <%--SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();--%>
                        <%--SqlSessionFactory factory = builder.build(in);--%>
                        <%--SqlSession session2 = factory.openSession();--%>
                        <%--UserDao_1 userDao_1 = session2.getMapper(UserDao_1.class);--%>
                        <%--int id = (int)request.getSession().getAttribute("userId");--%>
                        <%--List<UserBlog> list = userDao_1.findAllblog(id);--%>
                        <%--request.setAttribute("list",list);--%>

                        <%--session2.close();--%>
                        <%--in.close();--%>

                    <%--%>--%>
                    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>


                        <%--<td>历史博客</td>--%>
                        <%--<td>删除</td>--%>
                        <%--<td>修改</td>--%>

                    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
                    <%--<c:forEach items="${requestScope.list}" var="member" >--%>
                        <%--<div style="height: 200px;display: block;padding-left: 600px" >--%>
                            <%--<input type="hidden" id="need" value="" name="need">--%>
                            <%--&lt;%&ndash;<td><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateServlet';form.submit();" ></td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteServlet';form.submit();"></td>&ndash;%&gt;--%>

                            <%--<div style="height: 100%;width:400px;float: left">--%>
                                <%--<textarea rows="10" cols="30" id="${member.id}" style="height: 100%;width: 100%"  name="${member.id}blog">${member.blog}</textarea></div>--%>
                                <%--&lt;%&ndash;<div style="float: left"><input type="submit" id="${member.id}" value="删除" onclick="get(this.id);form.action='DeleteBlog';form.submit();"></div>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<div style="float: left"><input type="submit" id="${member.id}" value="修改" onclick="get(this.id);form.action='UpdateBlog';form.submit();"></div>&ndash;%&gt;--%>
                            <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">--%>

                                <%--修改--%>
                            <%--</button></div>--%>
                            <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">--%>

                                <%--删除--%>
                            <%--</button></div>--%>
                        <%--</div>--%>

                        <%--</div>--%>
                    <%--</c:forEach>--%>





                    <%--<script>--%>
                        <%--function get(a) {--%>
                            <%--document.getElementById("need").value = a;--%>
                            <%--// document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML--%>

                        <%--}--%>
                    <%--</script>--%>
                <%--</table>--%>
            <%--</form>--%>

                    <br>

                    <br>


        <form  class="ui  form attached fluid segment" action="WriteBlog"  method="post" >
            <div  id="writeblog" class="field"  >

                <textarea  class="form-control" id="content-editormd-markdown-doc" name="content-editormd-markdown-doc"></textarea>
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

            <button id="up-btn" class="ui red basic button" type="submit" tabindex="5" onclick="form.submit();">
                发布

            </button>

        </form>









        <%--</form>--%>
            <%--</center>--%>
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

        <%--</center>--%>

    <%--</div>--%>

    <%--底部--%>
    <footer class="ui inverted  vertical segment m-padded-tb-massive">
    <div class="ui center aligned container">
        <div class="ui inverted divided grid">
            <div class="three wide column">
                <div class="ui inverted link list">
                    <div class="item">
             <img src="img/德克萨斯.jpg" class="ui rounded image" alt="" style="width: 100px">
            </div>
                </div>
            </div>
            <div class="three wide column">
                <div class="ui inverted link list">
                    <div class="item">
                <h4 class="ui inverted header">欢迎来到我的博客</h4>
                        <a href="#" class="item">mystory</a>
                        <a href="#" class="item">mystory</a>
                        <a href="#" class="item">mystory</a>
            </div>
                </div>
            </div>
            <div class="three wide column"> <div class="ui inverted link list">
                <div class="item">
                    <h4 class="ui inverted header">欢迎来到我的博客</h4>
                    <a href="#" class="item">mystory</a>
                    <a href="#" class="item">mystory</a>
                    <a href="#" class="item">mystory</a>
                </div>
            </div></div>
            <div class="seven wide column"> <div class="ui inverted link list">
                <div class="item">
                    <h4 class="ui inverted header">欢迎来到我的博客</h4>
                    <a href="#" class="item">mystory</a>
                    <a href="#" class="item">mystory</a>
                    <a href="#" class="item">mystory</a>
                </div>
            </div></div>
        </div>

    </div>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="./lib/editormd/editormd.min.js"></script>
<script>
    function get(a) {
        document.getElementById("need").value = a;
        // document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML

    }
</script>
<%--<script>--%>
    <%--$('#up-btn').click()(function () {--%>
        <%--$('#blog-form').submit();--%>
        <%----%>
    <%--});--%>
<%--</script>--%>
<script>
    $(function(){
        $('.ui.selection.dropdown').dropdown();
    });
</script>
<script type="text/javascript">
var WriteBlogEditor;

$(function() {
    WriteBlogEditor = editormd("writeblog", {
width   : "90%",
height  : 500,
syncScrolling : "single",
path    : "./lib/editormd/lib/",
        saveHTMLToTextarea : true, // 保存 HTML 到 Textarea
        toolbarAutoFixed:true,
});

<%--// // or--%>
<%--// testEditor = editormd({--%>
<%--// id      : "test-editormd",--%>
<%--// width   : "90%",--%>
<%--// height  : 640,--%>
<%--// path    : "../lib/"--%>
<%--// });--%>
<%--// */--%>
});
// </script>
</body>
</html>
