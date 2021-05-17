<!-- 好友关注 -->
<template>
  <div id="friendatt">
    <div id="friendatt-table">
      <vue-scroll :ops="ops" style="width:100%;height:100%">
      <div  v-for="(item,index) in blogs" :key=index class="friendatt-table-item">
        <div style="width:5%;margin-left:0px">{{index+1}}</div>
        <div style="width:10%">{{item.username}}</div>
        <div style="width:15%">发布时间：{{item.publishtime | formatDate}}</div>
        <div style="width:50%" @click="showDetail(item)">{{item.blogcontent}}</div>
        <div style="width:15%;color:#36d8f2">{{getType(item.blogtype)}}类</div>
        <div style="width:5%"><span style="color:#e39e4c;margin-right:10px;font-size:25px;cursor: pointer;" @click="addOk(item)"><Icon type="ios-heart" /></span>{{item.oknum}}</div>
      </div>
      </vue-scroll>
    </div>
    <div id="friend-list">
      <div class="friendatt-table-item">
        <div style="width:75%;color:#36d8f2;font-size:20px">
          关注人
          <span title="新增好友" style="font-size:28px;color:#e39e4c;cursor: pointer;" @click="addFriend()"><Icon type="ios-add-circle" /></span>
        </div>
        <div style="width:25%;color:#36d8f2;font-size:20px">取消关注</div>
      </div>
      <vue-scroll :ops="ops" style="width:100%;height:100%">
      <div  v-for="(item,index) in friendlist" :key=index class="friendatt-table-item">
        <div style="width:75%" @click="selectByName(item.friendname)">{{item.friendname}}</div>
        <div style="width:25%"><span style="color:red;margin-right:10px;font-size:25px;cursor: pointer;" @click="deleteAtt(item)"><Icon type="ios-close-circle" /></span></div>
      </div>
      </vue-scroll>
    </div>
    <Modal
        v-model="shouModel"
        title="新增好友选项卡"
        @on-ok="sureadd()">
        <span>输入好友名称：</span>
        <Input v-model="friendname" placeholder="输入好友名称" style="width: 150px" />
    </Modal>
    <Modal
        v-model="ifShowDetail"
        title="微博详情">
        <div>发布用户：{{item.username}}</div>
        <div>发布时间：{{item.publishtime | formatDate}}</div>
        <div>发布内容：{{item.blogcontent}}</div>
        <div>博客类型：{{getType(item.blogtype)}}</div>
    </Modal>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 所有博客
      blogs:"",
      // friend列表
      friendlist:"",
      // 展示对话框
      shouModel:false,
      // 展示详情
      ifShowDetail:false,
      // 消息详情
      item:"",
      // 好友名称
      friendname:"",
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
    this.selectAllFriend()
  },

  methods: {
     // 查询所有
    selectAll(){
      let _this = this
            _this.$axios.get('/api/blog/getAllBlog',{

              })
              .then(response => {
                _this.blogs = response.data
          })
    },
    // 点赞
    addOk(item){
      item.oknum++;
      let _this = this
       _this.$axios.get('/api/blog/addOk',{
               params:{
                      oknum:item.oknum,
                      id:item.id
                  }
              })
              .then(response => {
          })
    },
    selectAllFriend(){
      let username = sessionStorage["username"]
      let _this = this
       _this.$axios.get('/api/friend/getFriendById',{
               params:{
                      username:username
                  }
              })
              .then(response => {
                _this.friendlist = response.data
          })
    },
    //取消关注
    deleteAtt(item){
      let _this = this
          _this.$axios.get('/api/friend/deleteFriend',{
               params:{
                      id:item.id
                  }
              })
              .then(response => {
                _this.selectAll()
                _this.selectAllFriend()
          })

    },
    //根据人找
    selectByName(name){
        let _this = this
       _this.$axios.get('/api/blog/getBlogByUser',{
               params:{
                      username:name
                  }
              })
              .then(response => {
                _this.blogs = response.data
          })
    },
    // 打开状态栏
    addFriend(){

        this.shouModel = true
    },
    sureadd(){
      let _this = this
       _this.$axios.get('/api/friend/addFriedn',{
               params:{
                      id:0,
                      username:sessionStorage["username"],
                      friendname:_this.friendname
                  }
              })
              .then(response => {
                _this.selectAllFriend()
          })
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
    },
    //展示详情
    showDetail(item){
      this.item = item
      this.ifShowDetail = true
      let _this = this
       _this.$axios.get('/api/user/updateViewNum',{
               params:{
                      username:sessionStorage["username"],
                      type:item.blogtype
                  }
              })
              .then(response => {
                // alert(1)
          })
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
<style lang='scss' src="@/assets/menu/friendatt.scss" scoped>
</style>