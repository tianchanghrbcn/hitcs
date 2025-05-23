export default {
  path: '/warehouse',
  name: 'warehouse',
  component: () => import('@/layouts/BaseLayout'),
  redirect: '/warehouse/inStock',
  children: [
    {
      path: 'inStock',
      meta: { title: '入库管理', permission: 'stock_in' },
      component: () => import('@/views/warehouse/inStock/index'),
    },
    {
      path: 'inStock_create',
      meta: { title: '入库创建', permission: 'stock_in' },
      component: () => import('@/views/warehouse/inStockCreate/index'),
    },
    {
      path: 'inStock_detail',
      meta: { title: '入库通知单详情', permission: 'stock_in' },
      component: () => import('@/views/warehouse/inStockDetail/index'),
    },
    {
      path: 'inStock_record_detail',
      meta: { title: '入库记录详情', permission: 'stock_in' },
      component: () => import('@/views/warehouse/inStockRecordDetail/index'),
    },
    {
      path: 'outStock',
      meta: { title: '出库管理', permission: 'stock_out' },
      component: () => import('@/views/warehouse/outStock/index'),
    },
    {
      path: 'outStock_create',
      meta: { title: '出库创建', permission: 'stock_out' },
      component: () => import('@/views/warehouse/outStockCreate/index'),
    },
    {
      path: 'outStock_detail',
      meta: { title: '出库通知单详情', permission: 'stock_out' },
      component: () => import('@/views/warehouse/outStockDetail/index'),
    },
    {
      path: 'outStock_record_detail',
      meta: { title: '出库记录详情', permission: 'stock_out' },
      component: () => import('@/views/warehouse/outStockRecordDetail/index'),
    },
  ],
}