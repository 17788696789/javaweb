<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/5/13 0013
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>writeblog</title>
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
            <a href="index.jsp" class="item"><i class="info icon" ></i>返回主页</a>
            <a href="main.jsp" class="item"><i class="setting icon"></i>前往主站</a>

        </div>
    </div>
</nav>
<div  class="m-container-small m-padded-tb-big">
    <div class="ui container">
<form  class="ui form" action=""  method="post" >
<div class=" field">
    <div class="ui left action input">
        <button class="ui teal labeled icon button">
            <i class="idea icon"></i>
            标题
        </button>

                <input type="text" name="title" placeholder="标题" id="title"  >
            </div>
</div>




    <div class="field">
        <div id="md-content" style="z-index: 1 !important;">

            <div class="content">
    <div  id="writeblog" class="field"  style="z-index: 1!important;">
        <div >
        <textarea  class="form-control" id="content-editormd-markdown-doc" name="content-editormd-markdown-doc" style="height: 900px;width: 800px" placeholder="请输入博客内容"></textarea>
        <%--<td>博客内容：</td><td><input type="text" name="newblog" ></td>--%>
        </div>

    </div>
    </div>
            <div class="extra content">
<div class="field">
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
</div>
                <div class=" ui error message"></div>
                <div class="field">
                    <div class="ui right aligned container">
    <button id="up-btn" class="ui teal basic button" type="submit" tabindex="10"  onclick="form.submit();form.action='WriteBlog';">
        发布

    </button>
                    </div>
            </div>
            </div>
        </div>
    </div>
</form>
    </div>
</div>

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
    $(function(){
        $('.ui.selection.dropdown').dropdown();
    });
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
<script>
    $('.ui.form').form({
        fields: {
            title :{
                identifier:'title',
                rules:[{
                    type:'empty',
                    propmt:'请输入标题（<<>>）'
                }]

            },
            tag:{
                identifier:'tag',
                rules:[{
                    type:'empty',
                    propmt:'请选择类别？？？'
                }]

            },
            textarea:{
                identifier:'content-editormd-markdown-doc',
                rules:[{
                    type:'empty',
                    propmt:'请输入博客内容！！！'
                }]

            }
            }

    });
</script>
<%--<script>--%>
<%--$('#up-btn').click()(function () {--%>
<%--$('#blog-form').submit();--%>
<%----%>
<%--});--%>
<%--</script>--%>
<%--<script>--%>
    <%--$(function(){--%>
        <%--$('.ui.selection.dropdown').dropdown();--%>
    <%--});--%>
<%--</script>--%>
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
