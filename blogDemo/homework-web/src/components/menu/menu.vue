<!-- 主界面,所有其他界面都是基于这个界面完成的 -->
<template>
  <div id="main-index" :style="{'height':''+clientHeight+'px'}">
      <div id="main-head">
          <div class="main-imagelabel">
              <img src="../../../static/image/background/text.png" alt="">
              <div class="main-headtext">
                亲爱的用户:{{username}}您好
                <span style="color:#36d8f2;font-size: 30px;" title="后台管理"><Icon type="ios-cog-outline" @click="backmain"/></span>
                <span title="退出登录" style="margin-left:10px"><Icon type="md-log-out"  @click="loginOut"/></span>
              </div>
          </div>
          <div class="menu_list">
            <div class="menu_item"><div class="menu_tag allblog" @click="changeMenu('allblog')">博客总览</div></div>
            <div class="menu_item"><div class="menu_tag friendatt" @click="changeMenu('friendatt')">好友关注</div></div>
            <div class="menu_item"><div class="menu_tag sysrecommend" @click="changeMenu('sysrecommend')">系统推荐</div></div>
            <div class="menu_item"><div class="menu_tag personal" @click="changeMenu('personal')">个人用户</div></div>
         </div>
      </div>
      <div id="container">
            <router-view></router-view>
      </div>
  </div>
</template>

<script>

export default {
  data () {
    return {
        //高度，随着变化的高度是多少
        clientHeight:"",
        //用户名称，获取session中的信息
        username:""
    };
  },

  components: {},

  computed: {},

  mounted(){
      this.checkLogin()
      this.initialMenu()
  },

  methods: {
    //切换菜单
      changeMenu(menuName){
        $(".menu_tag").removeClass("choosing");
        $("." + menuName).addClass("choosing");
        this.$router.push({path:"/" + menuName})
      },
      // 推出登录
      loginOut(){
        sessionStorage.setItem("username","")
        this.$Message.success('推出登录')
        this.$router.push({path:"/"})
      },
      // 验证登录
      checkLogin(){
        this.username = sessionStorage["username"]
        if(this.username == ""){
          this.$router.push({path:"/"})
          this.$Message.error('未登录，请登陆')
        }
      },
      // 初始化菜单
      initialMenu(){
        $(".allblog").addClass("choosing");
      },
      // 跳转到后台管理页面
      backmain(){
        let routeUrl = this.$router.resolve({
          path: "/backmain"
        })
        window.open(routeUrl.href, '_blank')
      }
  }
}
</script>
<style lang='scss' src="@/assets/menu/menu.scss" scoped>
</style>