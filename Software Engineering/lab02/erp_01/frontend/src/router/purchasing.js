export default {
  path: '/purchasing',
  name: 'purchasing',
  component: () => import('@/layouts/BaseLayout'),
  redirect: '/purchasing/purchase_create',
  children: [
    {
      path: 'purchase_create',
      meta: { title: '采购开单', permission: 'purchase_create' },
      component: () => import('@/views/purchasing/purchaseCreate/index'),
    },
    {
      path: 'purchase_record',
      meta: { title: '采购记录', permission: 'purchase_record' },
      component: () => import('@/views/purchasing/purchaseRecord/index'),
    },
    {
      path: 'purchase_record_detail',
      meta: { title: '采购记录详情', permission: 'purchase_record_detail' },
      component: () => import('@/views/purchasing/purchaseRecordDetail/index'),
    },
  ],
}