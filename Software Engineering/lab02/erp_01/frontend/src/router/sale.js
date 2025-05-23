export default {
  path: '/sale',
  name: 'sale',
  component: () => import('@/layouts/BaseLayout'),
  redirect: '/sale/sale_create',
  children: [
    {
      path: 'sale_create',
      meta: { title: '销售开单', permission: 'sale_create' },
      component: () => import('@/views/sale/saleCreate/index'),
    },
    {
      path: 'sale_record',
      meta: { title: '销售记录', permission: 'sale_record' },
      component: () => import('@/views/sale/saleRecord/index'),
    },
    {
      path: 'sale_record_detail',
      meta: { title: '销售记录详情', permission: 'sale_record_detail' },
      component: () => import('@/views/sale/saleRecordDetail/index'),
    },
  ],
}