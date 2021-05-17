<!-- 所有博客 -->
<template>
  <div id="allblog">
    <div id="allblog-table">
      <vue-scroll :ops="ops" style="width:100%;height:100%">
      <dir  v-for="(item,index) in blogs" :key=index class="all-blog-table-item">
        <div style="width:5%;margin-left:0px">{{index+1}}</div>
        <div style="width:10%">{{item.username}}</div>
        <div style="width:15%">发布时间：{{item.publishtime | formatDate}}</div>
        <div style="width:50%" @click=showDetail(item)>{{item.blogcontent}}</div>
        <div style="width:15%;color:#36d8f2">{{getType(item.blogtype)}}类</div>
        <div style="width:5%"><span style="color:#e39e4c;margin-right:10px;font-size:25px;cursor: pointer;" @click="addOk(item)"><Icon type="ios-heart" /></span>{{item.oknum}}</div>
      </dir>
      </vue-scroll>
    </div>
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
      blogs:"",
      ifShowDetail:false,
      item:"",
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
<style lang='scss' src="@/assets/menu/allblog.scss" scoped>
</style>