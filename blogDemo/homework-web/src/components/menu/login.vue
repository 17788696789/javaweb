<!-- 登录界面 -->
<template>
  <div class="login-main">
    <img src="../../../static/image/background/bg.jpg" class="login-img">
    <div class="login-Form">
      <h2>个人博客系统</h2><br>
      <Form ref="formInline" :model="formInline" :rules="ruleInline">
        <FormItem prop="user">
          <Input type="text" v-model="formInline.user" placeholder="Username">
            <Icon type="ios-person-outline" slot="prepend"></Icon>
          </Input>
        </FormItem>
        <FormItem prop="password">
          <Input type="password" v-model="formInline.password" placeholder="Password">
            <Icon type="ios-lock-outline" slot="prepend"></Icon>
          </Input>
        </FormItem>
        <FormItem>
          <Button ghost type="success" style="width:260px" @click = "login">登录</Button>
        </FormItem>
      </Form>
    </div>
  </div>
</template>

<script>
    export default {
       name: "login",
       data(){
         return{
           //高度，随着变化的高度是多少
           formInline: {
             user: '',
             password: ''
           },
           ruleInline: {
             user: [
               { required: true, message: '请输入用户名', trigger: 'blur' }
             ],
             password: [
               { required: true, message: '请输入密码', trigger: 'blur' },
               { type: 'string', min: 3, message: '密码长度不够3位', trigger: 'blur' }
             ]
           }
         }
       },
       mounted(){
       },
        methods:{
          login(){
            let _this = this
            _this.$axios.get('/api/user/checkLogin',{
                  params:{
                      username: _this.formInline.user,
                      password: _this.formInline.password
                  }
              })
              .then(response => {
                //0没有用户，1密码不对，2管理员，3普通用户
                  if(response.data==0){
                    _this.$Message.error('用户不存在');
                  }else if(response.data==1){
                    _this.$Message.error('用户密码错误');
                  }else if(response.data==2){
                    _this.$Message.success('欢迎您，尊敬的管理员')
                    sessionStorage.setItem("username",_this.formInline.user)
                    sessionStorage.setItem("usertype",response.data)
                    _this.$router.push({path:"/menu"})
                  }else if(response.data==3){
                    _this.$Message.success('欢迎您，用户'+_this.formInline.user)
                    sessionStorage.setItem("username",_this.formInline.user)
                    sessionStorage.setItem("usertype",response.data)
                    _this.$router.push({path:"/menu"})
                  }
                })
          }

        }
    }
</script>
<style lang='scss' src="@/assets/menu/login.scss" scoped>
</style>