<template>
  <div>
    <a-card title="库存流水">
      <a-row :gutter="16">
        <a-col :span="2">
          <a-dropdown :trigger="['click']">
            <span class="trigger">
              {{ currentWarehouse }}
              <a-icon type="down" />
            </span>
            <a-menu slot="overlay">
              <a-menu-item v-for="item in warehouseItems" :key="item.name" @click="onChangeWarehouse(item)">
                <span>{{ item.name }}</span>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
        </a-col>

        <a-col :span="6" :md="8" :xl="6" style="max-width: 256px; margin-bottom: 12px;">
          <a-input-search v-model="searchForm.search" placeholder="单号" allowClear @search="search" />
        </a-col>
      </a-row>

      <a-row style="margin-top: 12px;">
        <a-table size="small" :columns="columns" :dataSource="items" rowKey="id" :loading="loading"
          :pagination="pagination" @change="tableChange">
          <div slot="action" slot-scope="value, item">
            <a-button-group size="small">
              <a-button size="small" @click="detial(item)">详情</a-button>
            </a-button-group>
          </div>
        </a-table>
      </a-row>
    </a-card>
  </div>
</template>

<script>
import { inventoryFlowsList } from '@/api/warehouse'
import { warehousesOption } from '@/api/option';
export default {
  name: 'SaleRecord',
  components: {
  },
  inject: ['reloadPage'],
  data() {
    return {
      warehouseItems: [],
      currentWarehouse: '所有仓库',
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
          title: '仓库',
          dataIndex: 'warehouse_name',
        },
        {
          title: '产品名称',
          dataIndex: 'goods_name',
        },
        {
          title: '产品编号',
          dataIndex: 'goods_number',
        },
        {
          title: '流水类型',
          dataIndex: 'type_display',
        },
        {
          title: '变化之前数量',
          dataIndex: 'quantity_before',
        },
        {
          title: '变化数量',
          dataIndex: 'quantity_change',
        },
        {
          title: '变化之后数量',
          dataIndex: 'quantity_after',
        },
        {
          title: '创建日期',
          dataIndex: 'create_time',
          width: 170
        },
        {
          title: '操作',
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          width: 80
        },
      ],
      searchForm: { page: 1, page_size: 16 },
      pagination: { current: 1, total: 0, pageSize: 16 },
      loading: false,
      items: [],
      visible: false,
      targetItem: {},
      form: {},
      all:[]
    };
  },
  computed: {
  },
  methods: {
    onChangeWarehouse(item) {
        this.currentWarehouse = item.name;
        // this.$store.commit('setWarehouse', item.id);
        // this.reloadPage();
        if(item.name=='所有仓库'){
          this.items = this.all;
          return;
        }
        var temp = [];
        for(var i=0;i<this.all.length;i++){
          if(this.all[i].warehouse_name==this.currentWarehouse){
            temp.push(this.all[i]);
          }
        }
        this.items = temp;
      },
    initialize() {
      this.list();
      warehousesOption({ page_size: 999999 }).then(data => {
        console.log(data.results)
        this.warehouseItems = [{ id: 0, name: '所有仓库' }, ...data.results];
      });
    },
    list() {
      this.loading = true;
      inventoryFlowsList(this.searchForm).then(data => {
        this.pagination.total = data.count;
        this.items = data.results;
        this.all = [...this.items];
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
    detial(item) {
      this.$router.push({ path: '/warehouse/flow_detail', query: { item: JSON.stringify(item) } });
    },
  },
  mounted() {
    this.initialize();
  },
}
</script>