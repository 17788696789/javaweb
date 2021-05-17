// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
// 引入路由组件
import Routers from './router'
import VueRouter from 'vue-router';
// 引入全局存储仓库
import store from './store'
// 引入iview组件
import iView from 'iview';
// 引入echarts组件
import * as echarts from 'echarts'
//iview的组件样式
import 'iview/dist/styles/iview.css';
// 引入工具
import Util from './libs/util';
import axios from 'axios'
import $ from 'jquery' ;

import vuescroll from 'vuescroll';
import 'vuescroll/dist/vuescroll.css';
Vue.use(vuescroll);

Vue.config.productionTip = false

//此页面引入插件
Vue.use(VueRouter);
Vue.use(iView);
Vue.prototype.$echarts = echarts
Vue.prototype.$axios = axios;
// const axios = require("axios")

// 路由配置
const RouterConfig = {
  // mode: 'hash',
  routes: Routers
};

const router = new VueRouter(RouterConfig);

// 全局路由守卫
router.beforeEach((to, from, next) => {
  iView.LoadingBar.start();
  Util.title(to.meta.title);
  next();
});

router.afterEach((to, from, next) => {
  iView.LoadingBar.finish();
  window.scrollTo(0, 0);
});
new Vue({
  el: '#app',
  router:router,
  render: h => h(App),
  store
})