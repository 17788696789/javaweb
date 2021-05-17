//vuex，提供全局数据存储
import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
    //数据项，相当于vue组件的data
    state:{
        //从哪里来，确定是需要自己输入直接使用接口，还是使用传送来的数据
        fromWhere:"",
        //爬取的普通数据
        catchGeneralData:""
    },
    //存放取出state中数据的函数
    getters:{
        // 获取从哪里来的标志
        getFromWhere:state => {
          return state.fromWhere;
        },
        // 获取抓取的普通数据
        getCatchGeneralData:state => {
          return state.catchGeneralData;
        },
    },
    //将vue组件中的数据赋值给state中的数据
    mutations:{
        //此函数默认传两个参数，第一个是state对象，第二个是我们填入的数据
        //设置从哪里来的标志
        setFromWhere:(state, obj) => {
          state.fromWhere = obj;
        },
        //设置抓取的普通数据   
        setCatchGeneralData:(state,obj) =>{
          state.catchGeneralData = obj; 
        }
    }
  })