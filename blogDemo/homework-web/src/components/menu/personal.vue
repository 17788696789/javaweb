<!-- 个人空间 -->
<template>
  <div id="allblog">
    <div id="allblog-table">
      <vue-scroll :ops="ops" style="width:100%;height:100%">
      <dir  v-for="(item,index) in blogs" :key=index class="all-blog-table-item">
        <div style="width:5%;margin-left:0px">{{index+1}}</div>
        <div style="width:10%">{{item.username}}</div>
        <div style="width:15%">{{item.publishtime | formatDate}}</div>
        <div style="width:50%">{{item.blogcontent}}</div>
        <div style="width:15%;color:#36d8f2">{{getType(item.blogtype)}}类</div>
        <div style="width:5%"><span style="color:#e39e4c;margin-right:10px;font-size:25px;cursor: pointer;" @click="updateBlog(item)"><Icon type="ios-brush" /></span></div>
      </dir>
      </vue-scroll>
    </div>
    <div id="person-msg">
      <!-- <div class="head_img"></div> -->
      <img class="head_img" src="../../../static/image/background/pig.jpg" alt="">
      <div class="other-msg">博主名称：{{username}}<span style="color:#e39e4c;margin-left:10px;font-size:25px;cursor: pointer;" @click="addBlog()"><Icon type="ios-brush" /></span></div>
    </div>
    <Modal
        v-model="shouModel"
        title="博客内容"
        @on-ok="sureupdate()">
        <span>输入博客信息</span>
        <Input v-model="blogcontent" show-word-limit type="textarea" placeholder="Enter something..." style="width: 400px" />
        <div v-if="index==2" style="margin-top:10px"><span>输入博客类别</span>
          <Select v-model="selectValue" style="width:200px">
            <Option value="knowledge">知识类</Option>
            <Option value="life">生活类</Option>
            <Option value="entertainment">娱乐类</Option>
            <Option value="consult">资讯类</Option>
            <Option value="music">音乐类</Option>
          </Select>
        </div>
    </Modal>
  </div>
</template>

<script>
export default {
  data () {
    return {
      blogs:"",
      shouModel:false,
      blogcontent:"",
      username:sessionStorage["username"],
      publishtime:"",
      id:"",
      oknum:"",
      selectValue:"",
      ops: {
        vuescroll: {},
        scrollPanel: {},
        rail: {
            keepShow:true
        },
        bar: {
            hoverStyle: true,
            onlyShowBarOnScroll: false, //是否只有滚动的时候才显示滚动条
            background: '#36d8f2',
        }
      }
    };
  },

  components: {},

  computed: {},

  mounted(){
    this.selectAll()
  },

  methods: {
    // 查询所有
    selectAll(){
      let _this = this
       _this.$axios.get('/api/blog/getBlogByUser',{
               params:{
                      username:sessionStorage["username"]
                  }
              })
              .then(response => {
                _this.blogs = response.data

          })
    },
    // 修改博客
    updateBlog(item){
        this.index = 1
        this.shouModel = true
        this.blogcontent = item.blogcontent
        this.username = item.username
        this.oknum = item.oknum
        this.publishtime = item.publishtime
        this.id = item.id
    },
    sureupdate(){
      let _this = this
      if(this.index == 1){
          _this.$axios.get('/api/blog/updateBlog',{
               params:{
                      blogcontent:_this.blogcontent,
                      username:_this.username,
                      oknum:_this.oknum,
                      publishtime:_this.publishtime,
                      id:_this.id
                  }
              })
              .then(response => {
                _this.selectAll()
          })
      }else{
        _this.$axios.get('/api/blog/addBlog',{
               params:{
                      blogcontent:_this.blogcontent,
                      username:_this.username,
                      oknum:0,
                      publishtime:_this.publishtime,
                      id:0,
                      blogtype:_this.selectValue
                  }
              })
              .then(response => {
                _this.blogcontent = ""
                _this.selectAll()
          })
      }
      
    },
    // 新增博客
    addBlog(){
      this.index = 2
      this.shouModel = true
      this.publishtime = Date.parse(new Date())+""
    },
    // 获取类别
    getType(value){
      if(value == "knowledge"){
        return "知识"
      }else if(value == "life"){
        return "生活"
      }else if(value == "entertainment"){
        return "娱乐"
      }else if(value == "music"){
        return "音乐"
      }else if(value == "consult"){
        return "咨询"
      }
    }
  },
  filters: {
      formatDate: function (value) {
        let date = new Date(parseInt(value));
        let y = date.getFullYear();
        let MM = date.getMonth() + 1;
        MM = MM < 10 ? ('0' + MM) : MM;
        let d = date.getDate();
        d = d < 10 ? ('0' + d) : d;
        let h = date.getHours();
        h = h < 10 ? ('0' + h) : h;
        let m = date.getMinutes();
        m = m < 10 ? ('0' + m) : m;
        let s = date.getSeconds();
        s = s < 10 ? ('0' + s) : s;
        return y + '-' + MM + '-' + d + ' ' + h + ':' + m + ':' + s;
      }
    }
}

</script>
<style lang='scss' src="@/assets/menu/personal.scss" scoped>
</style>