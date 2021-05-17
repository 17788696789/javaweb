<!-- 权限管理 -->
<template>
  <div id="user-manage">
    <div class="user-title"><span title="新增用户" style="font-size:28px" @click="adduser('add')"><Icon type="ios-add-circle" /></span><span>权限管理</span></div>
    <div class="user-table">
      <div class="user-table-title">
        <div style="width:15%">权限序号</div>
        <div style="width:35%">权限详细</div>
        <div style="width:30%">权限名称</div>
        <div style="width:20%">操作</div>
      </div>
      <div v-for="(item,index) in allUsers" :key="index" class="user-table-content">
        <div style="width:15%">{{index+1}}</div>
        <div style="width:35%">{{item.right}}</div>
        <div style="width:30%">{{item.rightname}}</div>
        <div style="width:20%">
          <span title="修改" style="color:green" @click="adduser('update',item)"><Icon type="ios-brush" /></span>
          <span title="删除" style="margin-left:15px;color:red" @click="deleteuser(item.id)"><Icon type="ios-close-circle" /></span>
        </div>
      </div>
    </div>
    <Drawer :title="drawerTitle" :closable="false" v-model="addDrawer">
        <div><span>权限名称：</span><Input v-model="rightname" placeholder="输入权限名称" style="width: 150px" /></div>
        <div style="margin-top:15px"><span>权限详细：</span><Input v-model="right" placeholder="输入权限详细" style="width: 150px" /></div>
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
      drawerTitle:"新增权限",
      // 权限名
      rightname:"",
      // 权限
      right:"",
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
        this.drawerTitle = "新增权限"
      }else{
        this.drawerTitle = "修改权限"
        this.rightname = item.rightname
        this.right = item.right
        this.id = item.id
      }
      this.addDrawer = true
    },
    // 查询所有
    selectAll(){
        let _this = this
            _this.$axios.get('/api/right/getAllRight',{
              })
              .then(response => {
                _this.allUsers = response.data
          })
    },
    //新增或者修改
    addOrUpdate(){
      let _this = this
      if(this.drawerTitle == '新增权限'){
            _this.$axios.get('/api/right/insertRight',{
               params:{
                      rightname: _this.rightname,
                      right: _this.right,
                      id:0
                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('新增成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.rightname = ""
                  _this.right = ""
                }
          })
      }else{
        _this.$axios.get('/api/right/updateRight',{
               params:{
                      rightname: _this.rightname,
                      right: _this.right,
                      id:_this.id,
                  }
              })
              .then(response => {
                if(response.data==1){
                  _this.$Message.success('修改成功')
                  _this.selectAll()
                  _this.addDrawer = false
                  _this.rightname = ""
                  _this.right = ""
                }
          })

      }
    },
    //删除用户
    deleteuser(id){
      let _this = this
      _this.$axios.get('/api/right/deleteRight',{
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
<style lang='scss' src="@/assets/backmanage/rightmanage.scss" scoped>
</style>