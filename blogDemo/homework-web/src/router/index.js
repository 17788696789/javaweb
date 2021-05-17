//页面配置路由
const routers = [
  {
    path: '/',
    name: 'login',
    meta: {
      title: '登录'
    },
    component: (resolve) => require(['@/components/menu/login'], resolve),
  },
  {
    path: '/menu',
    name: 'memu',
    meta: {
      title: '选择菜单'
    },
    component: (resolve) => require(['@/components/menu/menu'], resolve),
    redirect: '/allblog',
    children:[
      {
        path: '/allblog',
        name: 'allblog',
        component: (resolve) => require(['@/components/menu/allblog'], resolve),
      },
      {
        path: '/friendatt',
        name: 'friendatt',
        component: (resolve) => require(['@/components/menu/friendatt'], resolve),
      },
      {
        path: '/personal',
        name: 'personal',
        component: (resolve) => require(['@/components/menu/personal'], resolve),
      },
      {
        path: '/sysrecommend',
        name: 'sysrecommend',
        component: (resolve) => require(['@/components/menu/sysrecommend'], resolve),
      },
    ]
  },
  {
    path: '/backmain',
    name: 'backmain',
    meta: {
      title: '后台管理'
    },
    component: (resolve) => require(['@/components/backmanage/backmain'], resolve),
    redirect: '/usermanage',
    children:[
      {
        path: '/usermanage',
        name: 'usermanage',
        component: (resolve) => require(['@/components/backmanage/usermanage'], resolve),
      },
      {
        path: '/rolemanage',
        name: 'rolemanage',
        component: (resolve) => require(['@/components/backmanage/rolemanage'], resolve),
      },
      {
        path: '/rightmanage',
        name: 'rightmanage',
        component: (resolve) => require(['@/components/backmanage/rightmanage'], resolve),
      },
    ]
  },
]
export default routers
