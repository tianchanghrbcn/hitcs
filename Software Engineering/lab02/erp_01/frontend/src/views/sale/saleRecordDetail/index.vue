<template>
  <div>
    <a-card title="销售单详情">
      <a-button slot="extra" type="primary" ghost @click="() => { this.$router.go(-1); }"> <a-icon type="left" />返回</a-button>
      <section id="printContent">
        <a-spin :spinning="loading">
          <a-descriptions bordered>
            <a-descriptions-item label="销售编号">
              {{ info.number }}
            </a-descriptions-item>
            <a-descriptions-item label="销售单号">
              {{ info.sales_order }}
            </a-descriptions-item>
            <a-descriptions-item label="客户">
              {{ info.client_name }}
            </a-descriptions-item>
            <a-descriptions-item label="仓库">
              {{ info.warehouse_name }}
            </a-descriptions-item>
            <a-descriptions-item label="经手人">
              {{ info.handler_name }}
            </a-descriptions-item>
            <a-descriptions-item label="处理日期">
              {{ info.handle_time }}
            </a-descriptions-item>
            <a-descriptions-item label="其他费用">
              {{ info.other_amount }}
            </a-descriptions-item>
            <a-descriptions-item label="备注">
              {{ info.remark }}
            </a-descriptions-item>
          </a-descriptions>
          <!-- <a-divider orientation="left" style="margin-top: 30px;">结算账户信息</a-divider>
          <a-table
            rowKey="id"
            size="middle"
            :columns="columnsAccount"
            :data-source="info.sales_account_items"
            :pagination="false" /> -->
          <a-divider orientation="left" style="margin-top: 30px;">产品信息</a-divider>
          <a-table
            rowKey="id"
            size="middle"
            :columns="columns"
            :data-source="info.sales_goods_items"
            :pagination="false" />
        </a-spin>
      </section>
    </a-card>
  </div>
</template>

<script>
  import { saleOrderDetail } from '@/api/sale'
  import NP from 'number-precision'

export default {
    data() {
      return {
        loading: false,
        materialLoading: false,
        receiptOrder: undefined,
        info: {},
        columns: [
          {
            title: '序号',
            dataIndex: 'index',
            key: 'index',
            width: 45,
            customRender: (value, item, index) => {
              return item.isTotal ? '合计' : (index + 1)
            },
          },
          {
            title: '产品名称',
            dataIndex: 'goods_name',
            key: 'goods_name',
            width: 150,
          },
          {
            title: '产品编号',
            dataIndex: 'goods_number',
            key: 'goods_number',
            width: 150,
          },
          {
            title: '单位',
            dataIndex: 'unit_name',
            key: 'unit_name',
            width: 80,
          },
          {
            title: '销售数量',
            dataIndex: 'sales_quantity',
            key: 'sales_quantity',
            width: 120,
          },
          {
            title: '销售单价(元)',
            dataIndex: 'sales_price',
            key: 'sales_price',
            width: 120,
          },
          {
            title: '金额',
            dataIndex: 'totalAmount',
            key: 'totalAmount',
            width: 200,
            customRender: (value, item) => {
              if (item.isTotal) return value;
              value = NP.times(item.sales_quantity, item.sales_price);
              return item.id ? NP.round(value, 2) : ''
            },
          }
        ],
        columnsAccount: [
          {
            title: '序号',
            dataIndex: 'index',
            key: 'index',
            width: 45,
            customRender: (value, item, index) => {
              return item.isTotal ? '合计' : (index + 1)
            },
          },
          {
            title: '结算账户',
            dataIndex: 'account_name',
            key: 'account_name',
            width: 200,
          },
          {
            title: '付款金额',
            dataIndex: 'collection_amount',
            key: 'collection_amount',
            width: 200,
          }
        ],
      }
    },
    created(){
      this.initData();
    },
    methods: {
      initData() {
        this.loading = true;
        saleOrderDetail({ id: this.$route.query.id }).then(data => {
          this.info = data;
          this.info.sales_account_items = [
            ...this.info.sales_account_items,
            {
              id: '-1',
              isTotal: true,
              collection_amount: this.info.collection_amount,
            },
          ];
          this.info.sales_goods_items = [
            ...this.info.sales_goods_items,
            {
              id: '-1',
              isTotal: true,
              sales_quantity: this.info.total_quantity,
              totalAmount: this.info.total_amount,
            },
          ];
        }).finally(() => {
          this.loading = false;
        });
      },
    },
    mounted() {
      this.initData();
    },
  }
</script>
<style>
</style>
