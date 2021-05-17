<!-- 用户管理 -->
<template>
  <div id="user-manage">
    <div class="user-title"><span title="新增用户" style="font-size:28px" @click="adduser('add')"><Icon type="ios-add-circle" /></span><span>用户管理</span></div>
    <div class="user-table">
      <div class="user-table-title">
        <div style="width:10%">用户序号</div>
        <div style="width:10%">用户姓名</div>
        <div style="width:10%">用户密码</div>
        <div style="width:10%">用户角色</div>
        <div style="width:8%">知识类</div>
        <div style="width:8%">生活类</div>
        <div style="width:8%">娱乐类</div>
        <div style="width:8%">资讯类</div>
        <div style="width:8%">音乐类</div>
        <div style="width:20%">操作</div>
      </div>
      <div v-for="(item,index) in allUsers" :key="index" class="user-table-content">
        <div style="width:10%">{{index+1}}</div>
        <div style="width:10%">{{item.username}}</div>
        <div style="width:10%">{{item.password}}</div>
        <div style="width:10%">{{item.role}}</div>
        <div style="width:8%">{{item.knowledge}}次</div>
        <div style="width:8%">{{item.life}}次</div>
        <div style="width:8%">{{item.entertainment}}次</div>
        <div style="width:8%">{{item.consult}}次</div>
        <div style="width:8%">{{item.music}}次</div>
        <div style="width:20%">
          <span title="修改" style="color:green" @click="adduser('update',item)"><Icon type="ios-brush" /></span>
          <span title="删除" style="margin-left:15px;color:red" @click="deleteuser(item.id)"><Icon type="ios-close-circle" /></span>
        </div>
      </div>
    </div>
    <Drawer :title="drawerTitle" :closable="false" v-model="addDrawer">
        <div><span>用户姓名：</span><Input v-model="username" placeholder="输入姓名" style="width: 150px" /></div>
        <div style="margin-top:15px"><span>用户密码：</span><Input v-model="password" placeholder="输入密码" style="width: 150px" /></div>
        <div style="margin-top:15px"><span>用户角色：</span><Input v-model="role" placeholder="输入密码" style="width: 150px" /></div>
        <Button style="margin-top:30px;width:210px" type="primary" @click="addOrUpdate">完成</Button>
    </Drawer>
  </div>
</template>

<script>
export default {
  data () {
    return {
      // 所有的用户
      allUsers:"",
      // 新增的抽屉
      addDrawer:false,
      // 抽屉的标题
      drawerTitle:"新增用户",
      // 用户姓名
      username:"",
      // 数日密码
      password:"",
      // 用户角色
      role:"",
      // 用户id
      id:""
    };
  },

  components: {},

  computed: {},

  mounted(){
    this.selectAll()
  },

  methods: {
    // 新增用户
    adduser(type,item){
      if(type == 'add'){
        this.drawerTitle = "新增用户"
      }else{
        this.drawerTitle = "修改用户"
        this.username = item.username
        this.password = item.password
        this.role = item.role
        this.id = item.id
      }
      this.addDrawer = true
    },
    // 查询所有
    selectAll(){
        let _this = this
            _this.$axios.get('/api/user/getAllUser',{
              })
              .then(response => {
                _this.allUsers = response.data
          })
    },
    //新增或者修改
    addOrUpdate(){
      let _this = this
      if(this.drawerTitle == '新增用户'){
            _this.$axios.get('/api/user/addUser',{
               params:{
                      username: _this.username,
                      password: _this.password,
                      id:0,
                      role: _this.role

                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('新增成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.username = ""
                  _this.password = ""
                  _this.role = ""
                }
          })
      }else{
        _this.$axios.get('/api/user/updateUser',{
               params:{
                      username: _this.username,
                      password: _this.password,
                      id:_this.id,
                      role: _this.role

                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('修改成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.username = ""
                  _this.password = ""
                  _this.role = ""
                }
          })

      }
    },
    //删除用户
    deleteuser(id){
      let _this = this
      _this.$axios.get('/api/user/deleteUser',{
               params:{
                      id:id,
                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('删除成功')
                  _this.selectAll()
                }
          })
    }
  }
}

</script>
<style lang='scss' src="@/assets/backmanage/usermanage.scss" scoped>
</style>