<template>
  <div>
    <a-row :gutter="[16, 16]">
      <a-col :span="8">
        <a-card class="data-card" size="small">
          <template slot="title">
            <span class="card-title">今日销售额</span>
          </template>
          <div class="data-value">{{ item.sales_amount || 0 }}</div>
        </a-card>
      </a-col>
      <a-col :span="8">
        <a-card class="data-card" size="small">
          <template slot="title">
            <span class="card-title">今日销售笔数</span>
          </template>
          <div class="data-value">{{ item.sales_count || 0 }}</div>
        </a-card>
      </a-col>
      <a-col :span="8">
        <a-card class="data-card" size="small">
          <template slot="title">
            <span class="card-title">今日采购笔数</span>
          </template>
          <div class="data-value">{{ item.purchase_count || 0 }}</div>
        </a-card>
      </a-col>

      <a-col :span="24">
        <a-card title="待办事项" size="small">
          <a-card-grid class="task-grid" @click="navigateTo('/warehouse/inStock')">
            <a-statistic title="待入库" :value="item.stock_in_task_count || 0" />
          </a-card-grid>
          <a-card-grid class="task-grid" @click="navigateTo('/warehouse/outStock')">
            <a-statistic title="待出库" :value="item.stock_out_task_count || 0" />
          </a-card-grid>
          <a-card-grid class="task-grid" @click="navigateTo('/report/stock_report')">
            <a-statistic title="库存预警" :value="item.inventory_warning_count || 0" />
          </a-card-grid>
        </a-card>
      </a-col>

      <a-col :span="12">
        <sales-trend />
      </a-col>

      <a-col :span="12">
        <sales-goods />
      </a-col>
    </a-row>
  </div>
</template>

<script>
import { homeOverview } from "@/api/statistic";

export default {
  components: {
    SalesTrend: () => import("./salesTrend.vue"),
    SalesGoods: () => import("./salesGoods.vue"),
  },
  data() {
    return {
      loading: false,
      item: {},
    };
  },
  methods: {
    initialize() {
      this.list();
    },
    list() {
      this.loading = true;
      homeOverview()
          .then((data) => {
            this.item = data;
          })
          .finally(() => {
            this.loading = false;
          });
    },
    navigateTo(pathName) {
      this.$router.push({ path: pathName });
    },
  },
  mounted() {
    this.initialize();
  },
};
</script>

<style scoped>
.data-card {
  background: linear-gradient(135deg, #1890ff 0%, #f5f5f5 100%);
  border-radius: 8px;
  overflow: hidden;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.card-title {
  color: #333;
  font-weight: 600;
}

.data-value {
  text-align: center;
  font-size: 32px;
  font-weight: 600;
  color: #1890ff;
  margin: 16px 0;
  line-height: 1.2;
}

.task-grid {
  width: 33.3%;
  text-align: center;
  cursor: pointer;
  transition: background-color 0.3s;
}

.task-grid:hover {
  background-color: #f0f5ff;
}
</style>
