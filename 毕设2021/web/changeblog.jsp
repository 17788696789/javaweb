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


    <style type="text/css">
        .comments {
            width:100%;/*自动适应父布局宽度*/
            overflow:auto;
            word-break:break-all;
            /*在ie中解决断行问题(防止自动变为在一行显示，主要解决ie兼容问题，ie8中当设宽度为100%时，文本域类容超过一行时，
            当我们双击文本内容就会自动变为一行显示，所以只能用ie的专有断行属性“word-break或word-wrap”控制其断行)*/
        }
    </style>

</head>
<body>
<nav class="ui inverted  attached segment m-padded-tb-mini">

    <div class="ui container">
        <div class="ui inverted menu">
            <h2 class="ui teal header item">我的博客个人界面</h2>
            <a href="login.jsp" class="item"><i class="home icon"></i>返回登录界面</a>
            <a href="index.jsp" class="item"><i class="info icon" ></i>返回主页</a>
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
<div class="ui attached pointing menu">
    <div class="ui container">
        <div class="right menu">
        </div>
    </div>
</div>

<%--<div class="m-padded-tb-large">--%>

    <%--<div class="ui container">--%>
        <%--<div class="ui grid">--%>
            <%--<div class="eleven wide column">--%>
                <%--<div class="ui top attached segment">--%>
                    <%--<div class="ui middle aligend two column grid">--%>
                        <%--<div class="column">--%>
                            <%--<h3 class="ui teal header">博客详情</h3>--%>
                        <%--</div>--%>
                        <%--<div class="right aligend column">--%>
                            <%--&lt;%&ndash;共<h3 class="ui orange header m-inline-block">12</h3>篇&ndash;%&gt;--%>

                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div class="ui attached segment">--%>
                    <%--<div class="ui card">--%>
                    <%--<form method="post" action=""  class="ui  form attached fluid segment">--%>
                        <%--<table  class="ui selectable table" border="0" style="text-align: center">--%>
                            <%--<%--%>
                                <%--InputStream in = Resources.getResourceAsStream("SqlMapper.xml");--%>
                                <%--SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();--%>
                                <%--SqlSessionFactory factory = builder.build(in);--%>
                                <%--SqlSession session2 = factory.openSession();--%>
                                <%--UserDao_1 userDao_1 = session2.getMapper(UserDao_1.class);--%>
                                <%--int id = Integer.parseInt(request.getParameter("id"));--%>
                                <%--List<UserBlog> list = userDao_1.findChangeblog(id);--%>
                                <%--request.setAttribute("list",list);--%>

                                <%--session2.close();--%>
                                <%--in.close();--%>

                            <%--%>--%>
                            <%--<c:forEach items="${requestScope.list}" var="member" >--%>
                               <%--<div class="content">--%>
                                    <%--<input type="hidden" id="need" value="" name="need">--%>

                                        <%--<div style="height: 100%;width:400px;float: left" >--%>
                                            <%--<textarea id="${member.id}"   name="${member.id}blog" >${member.blog}</textarea>--%>
                                        <%--</div>--%>
                               <%--</div>--%>
                                <%--<div class="extra content">--%>
                                    <%--<div class="ui two buttons">--%>
                                    <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">--%>
                                        <%--修改--%>
                                    <%--</button></div>--%>
                                    <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">--%>
                                        <%--删除--%>
                                    <%--</button></div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</c:forEach>--%>
                        <%--</table>--%>
                    <%--</form>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>



<!--中间内容-->
<div  class="m-container-small m-padded-tb-big">
    <div class="ui container">
<form method="post" action=""  class="ui  form attached fluid segment">
<table  class="ui selectable table" border="0" style="text-align: center">
<%
    InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
    SqlSessionFactory factory = builder.build(in);
    SqlSession session2 = factory.openSession();
    UserDao_1 userDao_1 = session2.getMapper(UserDao_1.class);
    int id = Integer.parseInt(request.getParameter("id"));
    List<UserBlog> list = userDao_1.findChangeblog(id);
    request.setAttribute("list",list);

    session2.close();
    in.close();

%>
<c:forEach items="${requestScope.list}" var="member" >

            <div class="required field">
                <div class="ui left labeled input">
                    <input type="text" name="${member.id}title" placeholder="标题" id="${member.id}" value="${member.title}"  >
                </div>
            </div>

            <div class="field">
                <div id="md-content" style="z-index: 1 !important;">

                                <div class="content">
                                    <input type="hidden" id="need" value="" name="need">

                                      <div style="height: 400px;width: 1000px">
                                        <textarea id="${member.id}"   name="${member.id}blog" style="height:800px ;width: 800px" >${member.blog}</textarea>


                                      </div>

                                </div>
                                <div class="extra content">
                                    <div class="ui two buttons">
                                        <button class="ui secondary button" type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">
                                            修改
                                        </button>
                                        <button class="ui teal button" type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">
                                            删除
                                        </button>
                                    </div>
                                </div>

                </div>
            </div>







            <div class="ui error message"></div>


            </c:forEach>
            </table>
        </form>

    </div>
</div>
<footer class="ui inverted vertical segment m-padded-tb-massive">
    <div class="ui center aligned container">
        <div class="ui inverted divided stackable grid">
            <div class="three wide column">
                <div class="ui inverted link list">
                    <div class="item">

                    </div>
                </div>
            </div>
            <div class="three wide column">
                <h4 class="ui inverted header m-text-thin m-text-spaced " >最新博客</h4>
                <div class="ui inverted link list">
                    <a href="#" class="item m-text-thin">用户故事（User Story）</a>
                    <a href="#" class="item m-text-thin">用户故事（User Story）</a>
                    <a href="#" class="item m-text-thin">用户故事（User Story）</a>
                </div>
            </div>
            <div class="three wide column">
                <h4 class="ui inverted header m-text-thin m-text-spaced "></h4>
                <div class="ui inverted link list">
                    <a href="#" class="item m-text-thin"></a>
                    <a href="#" class="item m-text-thin"></a>
                </div>
            </div>
            <div class="seven wide column">
                <h4 class="ui inverted header m-text-thin m-text-spaced ">Blog</h4>
                <p class="m-text-thin m-text-spaced m-opacity-mini"></p>
            </div>
        </div>
        <div class="ui inverted section divider"></div>
        <p class="m-text-thin m-text-spaced m-opacity-tiny"></p>
    </div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/semantic-ui/2.2.4/semantic.min.js"></script>


<script>


    $('.menu.toggle').click(function () {
        $('.m-item').toggleClass('m-mobile-hide');
    });

    $('.ui.dropdown').dropdown({
        on : 'hover'
    });

    $('.ui.form').form({
        fields : {
            title : {
                identifier: 'title',
                rules: [{
                    type : 'empty',
                    prompt: '标题：请输入博客标题'
                }]
            }
        }
    });

</script>






<%--</form>--%>
<%--</center>--%>

<%--</center>--%>

<%--</div>--%>

<%--底部--%>




<script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<script src="./js/jquery.form.js"></script>
<script>
    function get(a) {
        document.getElementById("need").value = a;
        // document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML

    }
</script>

<script>
    $(function() {
        $('.ui.basic.modal')
            .modal('show');
    });
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

</body>
</html>
