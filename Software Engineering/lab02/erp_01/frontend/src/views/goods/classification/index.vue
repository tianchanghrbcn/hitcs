<template>
  <div>
    <a-card title="产品分类">
      <a-row gutter="16">
        <a-col :span="24" style="max-width: 200px; margin-bottom: 12px;">
          <a-input v-model="searchForm.search" placeholder="名称, 备注" allowClear @pressEnter="search" />
        </a-col>
        <a-col :span="24" style="width: 100px; margin-bottom: 12px;">
          <a-button type="primary" icon="search" @click="search">查询</a-button>
        </a-col>

        <div style="margin-bottom: 12px; float: right;">
          <a-button type="primary" icon="plus" style="margin: 0 8px;" @click="openFormModal(form)">新增分类</a-button>
        </div>
      </a-row>

      <a-row style="margin-top: 12px;">
        <a-table size="small" :columns="columns" :dataSource="items" rowKey="id" :loading="loading" :pagination="pagination"
                 @change="tableChange">
          <div slot="is_active" slot-scope="value">
            <a-tag :color="value ? 'green' : 'red'">{{value ? '激活' : '冻结'}}</a-tag>
          </div>
          <div slot="action" slot-scope="value, item">
            <a-button-group>
              <a-button icon="edit" size="small" @click="openFormModal(item)">编辑</a-button>
              <a-popconfirm title="确定删除吗" @confirm="destroy(item.id)">
                <a-button type="danger" icon="delete" size="small">删除</a-button>
              </a-popconfirm>
            </a-button-group>
          </div>
        </a-table>
      </a-row>
    </a-card>
    <form-modal v-model="visible" :form="targetItem" @create="create" @update="update" />
  </div>
</template>

<script>
import { goodsClassificationList, goodsClassificationDestroy } from '@/api/goods'

export default {
  name: 'Warehouse',
  components: {
    FormModal: () => import('./FormModal.vue'),
  },
  data() {
    return {
      columns: [
        {
          title: '序号',
          dataIndex: 'index',
          key: 'index',
          customRender: (value, item, index) => {
            return index + 1
          },
        },
        {
          title: '分类名称',
          dataIndex: 'name',
          sorter: true,
        },
        {
          title: '备注',
          dataIndex: 'remark'
        },
        {
          title: '操作',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          width: '156px'
        },
      ],
      searchForm: { search: '', page: 1, page_size: 16 },
      pagination: { current: 1, total: 0, pageSize: 16 },
      loading: false,
      items: [],

      visible: false,
      targetItem: {},
      form: {},
    };
  },
  computed: {
  },
  methods: {
    initialize() {
      this.list();
    },
    list() {
      this.loading = true;
      goodsClassificationList(this.searchForm).then(data => {
        this.pagination.total = data.count;
        this.items = data.results;
      }).finally(() => {
        this.loading = false;
      });
    },
    create(item) {
      // this.items.splice(0, 0, item);
      this.list();
    },
    update(item) {
      this.items.splice(this.items.findIndex(i => i.id == item.id), 1, item);
    },
    search() {
      this.searchForm.page = 1;
      this.pagination.current = 1;
      this.list();
    },
    openFormModal(item) {
      this.targetItem = { ...item };
      this.visible = true;
    },
    destroy(id) {
      goodsClassificationDestroy({ id }).then(() => {
        // this.items.splice(this.items.findIndex(item => item.id == id), 1);
        this.$message.success('删除成功');
        this.list();
      });
    },
    tableChange(pagination, filters, sorter) {
      this.searchForm.page = pagination.current;
      this.pagination.current = pagination.current;
      this.searchForm.ordering = `${sorter.order == 'descend' ? '-' : ''}${sorter.field}`;
      this.list();
    },
  },
  mounted() {
    this.initialize();
  },
}
</script>