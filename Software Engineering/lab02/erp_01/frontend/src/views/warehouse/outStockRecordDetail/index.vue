<template>
  <div>
    <a-card title="出库记录详情">
      <a-button slot="extra" type="primary" ghost @click="() => { this.$router.go(-1); }"> <a-icon type="left" />返回</a-button>
      <section id="printContent">
        <a-spin :spinning="loading">
          <a-descriptions bordered>
            <a-descriptions-item label="出库编号">
              {{ info.stock_out_order_number }}
            </a-descriptions-item>
            <a-descriptions-item label="经手人">
              {{ info.handler_name }}
            </a-descriptions-item>
            <a-descriptions-item label="经手日期">
              {{ info.handle_time }}
            </a-descriptions-item>
            <a-descriptions-item label="仓库">
              {{ info.warehouse_name }}
            </a-descriptions-item>
            <a-descriptions-item label="处理日期">
              {{ info.handle_time }}
            </a-descriptions-item>
            <a-descriptions-item label="备注">
              {{ info.remark }}
            </a-descriptions-item>
          </a-descriptions>
          <a-divider orientation="left" style="margin-top: 30px;">产品信息</a-divider>
          <a-table
            rowKey="id"
            size="middle"
            :columns="columns"
            :data-source="info.stock_out_record_goods_items"
            :pagination="false" />
        </a-spin>
      </section>
    </a-card>
  </div>
</template>

<script>
  import { stockOutRecordDetail } from '@/api/warehouse'

  export default {
    data() {
      return {
        loading: false,
        materialLoading: false,
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
            title: '出库数量',
            dataIndex: 'stock_out_quantity',
            key: 'stock_out_quantity',
            width: 120,
          },
          {
            title: '编号批次',
            dataIndex: 'batch_number',
            key: 'batch_number',
            width: 120,
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
        stockOutRecordDetail({ id: this.$route.query.id }).then(data => {
          this.info = data;
          this.info.stock_out_record_goods_items = [
            ...this.info.stock_out_record_goods_items,
            {
              id: '-1',
              isTotal: true,
              stock_out_quantity: this.info.total_quantity,
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
