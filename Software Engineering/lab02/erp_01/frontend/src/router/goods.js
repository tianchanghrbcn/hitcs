export default {
  path: '/goods',
  name: 'goods',
  component: () => import('@/layouts/BaseLayout'),
  redirect: '/goods/classification',
  children: [
    {
      path: 'classification',
      meta: { title: '产品分类', permission: 'classification' },
      component: () => import('@/views/goods/classification/index'),
    },
    {
      path: 'information',
      meta: { title: '产品信息', permission: 'information' },
      component: () => import('@/views/goods/information/index'),
    },
  ],
}