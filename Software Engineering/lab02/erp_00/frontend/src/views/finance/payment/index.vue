<template>
  <div>
    <a-card title="付款业务">
      <a-row :gutter="16">
        <a-col :span="24" :md="8" :xl="6" style="max-width: 256px; margin-bottom: 12px;">
          <a-input-search v-model="searchForm.search" placeholder="单号" allowClear @search="search" />
        </a-col>
        <div style="margin-bottom: 12px; float: right;">
          <a-button type="primary" icon="plus" style="margin: 0 8px;" @click="handelAdd(form)">新增付款单</a-button>
        </div>
      </a-row>

      <a-row style="margin-top: 12px;">
        <a-table size="small" :columns="columns" :dataSource="items" rowKey="id" :loading="loading" :pagination="pagination"
          @change="tableChange">
          <div slot="action" slot-scope="value, item">
            <a-button-group size="small">
              <a-button size="small" @click="detial(item)">详情</a-button>
              <a-popconfirm title="确定作废吗?" @confirm="voidItem(item)">
                <a-button type="danger" :disabled="item.is_void">{{ item.is_void ? '已作废' : '作废'}}</a-button>
              </a-popconfirm>
            </a-button-group>
          </div>
        </a-table>
      </a-row>
    </a-card>
  </div>
</template>

<script>
  import { paymentOrdersList, paymentOrdersVoid } from '@/api/finance'

  export default {
    name: 'SaleRecord',
    components: {
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
            width: 45
          },
          {
            title: '单号',
            dataIndex: 'number',
            sorter: true,
          },
          {
            title: '供应商',
            dataIndex: 'supplier_name',
          },
          {
            title: '经手人',
            dataIndex: 'handler_name',
          },
          {
            title: '处理日期',
            dataIndex: 'create_time',
            width: 170
          },
          {
            title: '付款金额(元)',
            dataIndex: 'total',
          },
          {
            title: '备注',
            dataIndex: 'remark',
          },
          {
            title: '操作',
            dataIndex: 'action',
            scopedSlots: { customRender: 'action' },
            width: 147
          },
        ],
        searchForm: { page: 1, page_size: 16 },
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
        paymentOrdersList(this.searchForm).then(data => {
          this.pagination.total = data.count;
          this.items = data.results;
          
          for(var i=0;i<this.items.length;i++){
            this.items[i].total = 0.0;
            for(var j=0;j<this.items[i].payment_account_items.length;j++){
              this.items[i].total += parseFloat(this.items[i].payment_account_items[j].payment_amount);
            }
          }
        }).finally(() => {
          this.loading = false;
        });
      },
      tableChange(pagination, filters, sorter) {
        this.searchForm.page = pagination.current;
        this.pagination.current = pagination.current;
        this.searchForm.ordering = `${sorter.order == 'descend' ? '-' : ''}${sorter.field}`;
        this.list();
      },
      onChangePicker(date, dateString) {
        let startDate = date[0], endDate = date[1];
        this.searchForm.start_date = startDate ? startDate.format('YYYY-MM-DD') : undefined;
        this.searchForm.end_date = endDate ? endDate.add(1, 'days').format('YYYY-MM-DD') : undefined;
        this.search();
      },
      search() {
        this.searchForm.page = 1;
        this.pagination.current = 1;
        this.list();
      },
      handelAdd(item) {
        this.$router.push({ path: '/finance/payment_create' });
      },
      detial(item) {
        this.$router.push({ path: '/finance/payment_detail', query: { id: item.id } });
      },
      voidItem(item) {
        paymentOrdersVoid({ id: item.id }).then(() => {
          this.$message.success('作废成功');
          this.list();
        });
      },
    },
    mounted() {
      this.initialize();
    },
  }
</script>