<!-- 角色管理 -->
<template>
  <div id="user-manage">
    <div class="user-title"><span title="新增角色" style="font-size:28px" @click="adduser('add')"><Icon type="ios-add-circle" /></span><span>角色管理</span></div>
    <div class="user-table">
      <div class="user-table-title">
        <div style="width:15%">角色序号</div>
        <div style="width:25%">角色名称</div>
        <div style="width:20%">角色权限</div>
        <div style="width:20%">角色详情</div>
        <div style="width:20%">操作</div>
      </div>
      <div v-for="(item,index) in allUsers" :key="index" class="user-table-content">
        <div style="width:15%">{{index+1}}</div>
        <div style="width:25%">{{item.rolename}}</div>
        <div style="width:20%">{{item.right}}</div>
        <div style="width:20%">{{item.role}}</div>
        <div style="width:20%">
          <span title="修改" style="color:green" @click="adduser('update',item)"><Icon type="ios-brush" /></span>
          <span title="删除" style="margin-left:15px;color:red" @click="deleteuser(item.id)"><Icon type="ios-close-circle" /></span>
        </div>
      </div>
    </div>
    <Drawer :title="drawerTitle" :closable="false" v-model="addDrawer">
        <div><span>角色名称：</span><Input v-model="rolename" placeholder="输入角色名称" style="width: 150px" /></div>
        <div style="margin-top:15px"><span>角色权限：</span><Input v-model="right" placeholder="输入角色权限" style="width: 150px" /></div>
        <div style="margin-top:15px"><span>角色详情：</span><Input v-model="role" placeholder="输入角色详情" style="width: 150px" /></div>
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
      drawerTitle:"新增角色",
      // 权限
      right:"",
      // 角色详情
      role:"",
      // 角色名称
      rolename:"",
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
        this.drawerTitle = "新增角色"
      }else{
        this.drawerTitle = "修改角色"
        this.right = item.right
        this.rolename = item.rolename
        this.role = item.role
        this.id = item.id
      }
      this.addDrawer = true
    },
    // 查询所有
    selectAll(){
        let _this = this
            _this.$axios.get('/api/role/getAllRole',{
              })
              .then(response => {
                _this.allUsers = response.data
          })
    },
    //新增或者修改
    addOrUpdate(){
      let _this = this
      if(this.drawerTitle == '新增角色'){
            _this.$axios.get('/api/role/addRole',{
               params:{
                      role: _this.role,
                      rolename: _this.rolename,
                      id:0,
                      right: _this.right

                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('新增成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.rolename = ""
                  _this.role = ""
                  _this.right = ""
                }
          })
      }else{
        _this.$axios.get('/api/role/updateRole',{
               params:{
                      role: _this.role,
                      rolename: _this.rolename,
                      id:_this.id,
                      right: _this.right

                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('修改成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.rolename = ""
                  _this.role = ""
                  _this.right = ""
                }
          })

      }
    },
    //删除用户
    deleteuser(id){
      let _this = this
      _this.$axios.get('/api/role/deleteRole',{
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
<style lang='scss' src="@/assets/backmanage/rolemanage.scss" scoped>
</style>