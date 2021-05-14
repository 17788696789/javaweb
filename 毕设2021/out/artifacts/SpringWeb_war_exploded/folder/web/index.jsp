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
    <%--<link rel="stylesheet" href="./lib/editormd/css/editormd.min.css">--%>

</head>
<body>
<nav class="ui inverted  attached segment m-padded-tb-mini">

    <div class="ui container">
<div class="ui inverted menu">
<h2 class="ui teal header item">我的博客个人界面</h2>
    <a href="login.jsp" class="item"><i class="home icon"></i>返回登录界面</a>
    <%--<a href="allfriend.jsp" class="item"><i class="idea icon"></i>查询所有好友信息</a>--%>
<a href="writeblog.jsp" class="item"><i class="idea icon"></i>写新的博客 </a>
    <a href="queryByName.jsp" class="item"><i class="tags icon"></i>按姓名模糊查询好友信息</a>
    <a href="findblog.jsp" class="item"><i class="info icon"></i>查询博客</a>
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
               <div class="ui segment">
                   <div class="ui grid">
                       <div class="fifteen wide column">
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
<a href="changeblog.jsp?id=${member.id}">
    <img src="https://picsum.photos/id/1032/800/100" class="ui rounded image">
                           <h3 class="ui header">发布者：${member.username}</h3>
                               <p>${member.title}</p>
<div class=" ui divider"></div>
</a>
                           <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='UpdateBlog';form.submit();"tabindex="5">--%>
                               <%--修改--%>
                           <%--</button></div>--%>
                           <%--<div style="float: left"><button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteBlog';form.submit();"tabindex="5">--%>
                               <%--删除--%>
                           <%--</button></div>--%>
                       </div>

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
                           <h3 class="ui teal header">好友关注</h3>
                       </div>
                       <div class="right aligend column">
                           <%--共<h3 class="ui orange header m-inline-block">12</h3>篇--%>

                       </div>
                   </div>
               </div>
           </div>
           <div class="ui attached segment">


               <form method="post" action="" >

                   <table class="ui selectable table">
                           <%

    InputStream on = Resources.getResourceAsStream("SqlMapper.xml");
    SqlSessionFactoryBuilder builde = new SqlSessionFactoryBuilder();
    SqlSessionFactory factorys = builde.build(on);
    SqlSession session1 = factorys.openSession();
    UserDao_1 userDao_ = session1.getMapper(UserDao_1.class);
    List<Friends> lists = userDao_.findAllfriend();
    request.setAttribute("list",lists);

    session1.close();
    in.close();

      %>

                       <c:forEach items="${requestScope.list}" var="member">
                       <div class="orange card">

                           <input type="hidden" id="a" value="" name="need">
                       <div class="content">
                           <img class="ui mini avatar  image" src="https://picsum.photos/id/1058/100/100">
                           <span><div class="header">好友：${member.name}</div></span>
                           <div class="meta">用户id：${member.userid} </div>
                                   <%--<a href="show.jsp">ashkdjajksdhjkasdh</a>--%>
                       </div>
                           <div class="extra content">
                               <div class="ui two buttons">
                                   <button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='DeleteServlet';form.submit();"tabindex="5">
                                       删除
                                   </button>
                                   <button class="ui red basic button"type="submit" id="${member.id}" onclick="get(this.id);form.action='CaXunServlet';form.submit();"tabindex="5">
                                       去往好友主页
                                   </button>
                               </div>
                           </div>
                       </div>

                               </c:forEach>
                   </table>
               </form>
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
<%--<div class="ui basic modal">--%>
    <%--<div class="ui icon header">--%>
        <%--<i class="archive icon"></i>--%>
        <%--Archive Old Messages--%>
    <%--</div>--%>
    <%--<div class="content">--%>
        <%--<p>Your inbox is getting full, would you like us to enable automatic archiving of old messages?</p>--%>
    <%--</div>--%>
    <%--<div class="actions">--%>
        <%--<div class="ui red basic cancel inverted button">--%>
            <%--<i class="remove icon"></i>--%>
            <%--No--%>
        <%--</div>--%>
        <%--<div class="ui green ok inverted button">--%>
            <%--<i class="checkmark icon"></i>--%>
            <%--Yes--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<form id='myupload' action="WriteBlog" method='post' enctype='multipart/form-data'>--%>
    <%--<div class="demo">--%>
        <%--<div class="btn">--%>
            <%--<span>添加附件</span>--%>
            <%--<input id="fileupload" type="file" name="file1">--%>
        <%--</div>--%>
        <%--<div class="progress">--%>
            <%--<span class="bar"></span><span class="percent">0%</span>--%>
        <%--</div>--%>
        <%--<!-- 显示已上传的文件名 -->--%>
        <%--<div class="files"></div>--%>
        <%--<!-- 显示已上传的图片-->--%>
        <%--<div class="showimg"></div>--%>
    <%--</div>--%>
    <%--<input type="submit" onclick="gosubmit2()"/>--%>
<%--</form>--%>
<%--<script type="text/javascript" src="./js/jquery.form.js"></script>--%>
<%--<script type="text/javascript">--%>
    <%--var bar = $('.bar');//进度条--%>
    <%--var percent = $('.percent');//获取上传百分比--%>
    <%--var showimg = $('.showimg');//显示图片的div--%>
    <%--var progress = $('.progress');//显示进度的div--%>
    <%--var files = $('.files');//文件上传控件的input元素--%>
    <%--var btn = $('.btn span'); //按钮文本--%>
    <%--function gosubmit2(){--%>
        <%--$("#myupload").ajaxSubmit({--%>
            <%--dataType :'json',//返回数据类型--%>
            <%--beforeSend:function(){--%>
                <%--showimg.empty();--%>
                <%--progress.show();--%>
                <%--var percentVal = '0%';--%>
                <%--bar.width(percentVal);--%>
                <%--percent.html(percentVal);--%>
                <%--btn.html('上传中..');--%>
            <%--},--%>
            <%--//更新进度条事件处理代码--%>
            <%--uploadProgress:function(event,position,total,percentComplete){--%>
                <%--var percentVal = percentComplete + '%';--%>
                <%--bar.width(percentVal);--%>
                <%--percent.html(percentVal);--%>
            <%--},--%>
            <%--success:function(data){//图片上传成功时--%>
                <%--//获取服务器端返回的文件数据--%>
                <%--alert(data.name+","+data.pic+","+data.size);--%>
            <%--},--%>
            <%--error:function(xhr){--%>
                <%--btn.html(上传失败);--%>
                <%--bar.width('0');--%>
                <%--files.html(xhr.responseText);--%>
            <%--}--%>
        <%--});--%>
    <%--}--%>
<%--</script>--%>
<%--<form class="layui-form" id="authorization-upload"  enctype="multipart/form-data" >--%>
    <%--<div class="layui-form-item layui-inline">--%>
        <%--<div class="layui-inline">--%>
            <%--<input type="file" name="file" required accept="image/jpeg"  lay-verify="required"  autocomplete="off" id="layui-upload" class="layui-input layui-upload">--%>
            <%--<button class=" layui-btn layui-authorupload-submit" lay-submit lay-filter="layui-authorupload-submit">上传</button>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</form>--%>
<%--<script>--%>
<%--form.on('submit(layui-authorupload-submit)', function(data){--%>
<%--var files = $('#layui-upload')[0].files //获取上传的文件列表--%>
<%--var formData = new FormData(); //新建一个formData对象--%>
<%--formData.append("file", files[0]); //append()方法添加字段--%>
<%--var index = layer.confirm("确定上传吗?",{icon:3},function(){--%>
<%--$.ajax({--%>
<%--url:url,--%>
<%--type:'post',--%>
<%--data:formData,--%>
<%--processData:false,//必填 必须false 才会避开jq对formdata的默认处理 XMLHttpRequest才会对formdata进行正确处理  否则会报Illegal invocation错误--%>
<%--contentType:false,//必填 必须false 才会加上正确的Content-Type--%>
<%--success:function(res) {--%>
<%--if(JSON.parse(res).code == 0 ) {--%>
<%--layer.msg("上传成功",{icon:1,time:2000},function(){--%>
<%--layer.closeAll()--%>
<%--})--%>
<%--}else {--%>
<%--layer.alert(JSON.parse(res).msg, {icon: 0});--%>
<%--layer.close(index)--%>
<%--}--%>
<%--}--%>
<%--})--%>
<%--})--%>
<%--return false;--%>
<%--})--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;<div class="nmse fl">上传图片：</div>--%>
<%--<div class="pic fl" onclick="$('#sfz_1').click()" >--%>
    <%--<img id="sfz_12" src="http://www.baidu.com/static/images/user/zjzpic1.jpg" title="点击上传图片">--%>
<%--</div>--%>
<%--<input type="file" class="ajax-upload"   id="sfz_1"  style="display:none">--%>
<%--<input type="hidden" name="sfz_1" id="sfz_11" value="">--%>
                    <%--<%-可用图片上传-&ndash;%&gt;--%>
<%--<form action="UpLoadImgServlet" method="post" enctype="multipart/form-data">--%>
    <%--描述：<input type="text" name="desc">--%>
    <%--图片：<input type="file" name="image">--%>
    <%--<input type="submit" value="sahngchuan">--%>
<%--</form>--%>
<%--<img src="./webimg/img/Warframe0001.jpg">--%>
        <%--<form  class="ui  form attached fluid segment" action="WriteBlog"  method="post" >--%>
            <%--<div  id="writeblog" class="field"  style="z-index: 1!important;">--%>

                <%--<textarea  class="form-control" id="content-editormd-markdown-doc" name="content-editormd-markdown-doc"></textarea>--%>
                    <%--&lt;%&ndash;<td>博客内容：</td><td><input type="text" name="newblog" ></td>&ndash;%&gt;--%>
            <%--</div>--%>

            <%--<div class="ui selection dropdown">--%>
                <%--<input type="hidden" name="tag">--%>
                <%--<i class="dropdown icon"></i>--%>
                <%--<div class="default text">类别</div>--%>
                <%--<div class="menu" tabindex="-1">--%>
                    <%--<div class="item" data-value="0">知识</div>--%>
                    <%--<div class="item" data-value="1">生活</div>--%>
                    <%--<div class="item" data-value="2">音乐</div>--%>
                    <%--<div class="item" data-value="3">娱乐</div>--%>
                    <%--<div class="item" data-value="4">资讯</div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<button id="up-btn" class="ui red basic button" type="submit" tabindex="5" onclick="form.submit();">--%>
                <%--发布--%>

            <%--</button>--%>

        <%--</form>--%>









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
<%--<script src="./lib/editormd/editormd.min.js"></script>--%>
<script src="./js/jquery.form.js"></script>
<script>
    function get(a) {
        document.getElementById("need").value = a;
        // document.getElementById( "my"+a ).value = document.getElementById( "my"+a ).innerHTML

    }
</script>
<script>
    function get(a) {
        document.getElementById("a").value = a;

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
<%--<script type="text/javascript">--%>
<%--var WriteBlogEditor;--%>

<%--$(function() {--%>
    <%--WriteBlogEditor = editormd("writeblog", {--%>
<%--width   : "90%",--%>
<%--height  : 500,--%>
<%--syncScrolling : "single",--%>
<%--path    : "./lib/editormd/lib/",--%>
        <%--saveHTMLToTextarea : true, // 保存 HTML 到 Textarea--%>
        <%--toolbarAutoFixed:true,--%>

    <%--});--%>

<%--&lt;%&ndash;// // or&ndash;%&gt;--%>
<%--&lt;%&ndash;// testEditor = editormd({&ndash;%&gt;--%>
<%--&lt;%&ndash;// id      : "test-editormd",&ndash;%&gt;--%>
<%--&lt;%&ndash;// width   : "90%",&ndash;%&gt;--%>
<%--&lt;%&ndash;// height  : 640,&ndash;%&gt;--%>
<%--&lt;%&ndash;// path    : "../lib/"&ndash;%&gt;--%>
<%--&lt;%&ndash;// });&ndash;%&gt;--%>
<%--&lt;%&ndash;// */&ndash;%&gt;--%>
<%--});--%>
<%--// </script>--%>
<%--<script>--%>
    <%--$('.ajax-upload').on('change',function(){//当 input file 已经选中时触发js--%>

        <%--var formData = new FormData();//先实例化formdata--%>
        <%--var file     = this.files[0];//获取文件名--%>
        <%--var id       = this.id;//本input的id--%>
        <%--var url      = '/spring/WriteBlog';//接受处理本JS方法的路径--%>

        <%--formData.append("sfz", file);//append方法用于向formdata中注入内容--%>

        <%--$.ajax({--%>
            <%--type: "post",--%>
            <%--url: url,--%>
            <%--//async:false,--%>
            <%--contentType: false,--%>
            <%--processData: false,--%>
            <%--data: formData,//传过来--%>
            <%--dataType: 'json',--%>
            <%--xhrFields: {--%>
                <%--withCredentials: true--%>
            <%--},--%>
            <%--success: function (data) {--%>
                <%--$('#'+id+"1").val(data.url);//在隐藏的hidden中返回文件的路径--%>
                <%--$('#'+id+"2").attr('src',data.url);//改变当前的显示图片--%>

            <%--}--%>
        <%--});--%>
    <%--})--%>
<%--</script>--%>
</body>
<script type="text/javascript">
    function consoleURL() {
        var fileName="";
        fileName=document.getElementById("picUpload").value;
        console.log(fileName);
        
    }

</script>
</html>
