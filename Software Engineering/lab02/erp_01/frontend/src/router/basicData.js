export default {
  path: '/basicData',
  name: 'basicData',
  component: () => import('@/layouts/BaseLayout'),
  redirect: '/basicData/client',
  children: [
    {
      path: 'client',
      meta: { title: '客户', permission: 'client' },
      component: () => import('@/views/basicData/client/index'),
    },
    {
      path: 'supplier',
      meta: { title: '供应商', permission: 'supplier' },
      component: () => import('@/views/basicData/supplier/index'),
    },
    {
      path: 'warehouse',
      meta: { title: '仓库', permission: 'warehouse' },
      component: () => import('@/views/basicData/warehouse/index'),
    },
  ],
}