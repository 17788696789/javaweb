<!-- 后台管理主界面 -->
<template>
  <div id="back-main">
    <div class="back-top">
      <img src="../../../static/image/background/blogmanage.png" alt="">
    </div>
    <Menu active-name="1-1" :open-names="['1']" theme="dark" style="height:100%;width:230px">
       <MenuItem name="1-1" @click.native="manage('usermanage')"><Icon type="ios-body" />用户管理</MenuItem>
       <MenuItem name="1-2" @click.native="manage('rolemanage')"><Icon type="ios-contrast" />角色管理</MenuItem>
       <MenuItem name="1-3" @click.native="manage('rightmanage')"><Icon type="md-eye" />权限管理</MenuItem>
    </Menu>
    <div class="main-content">
      <router-view/>
    </div>
  </div>
  
</template>

<script>
export default {
  data () {
    return {
    };
  },

  components: {},

  computed: {},

  mounted(){},

  methods: {
    // 管理函数
    manage(menuname){
        this.$router.push({path:"/" + menuname})
    }
  }
}

</script>
<style lang='scss' src="@/assets/backmanage/backmain.scss" scoped>
</style>