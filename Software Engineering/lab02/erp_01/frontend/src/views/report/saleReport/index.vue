<template>
  <div class="report-container">
    <div class="filter-section">
      <a-card class="filter-card">
        <a-row :gutter="16">
          <a-col :span="10">
            <a-form-model-item :wrapper-col="{ span: 24 }">
              <a-radio-group v-model="radioValue" button-style="solid" @change="changeRadio" style="width: 100%;">
                <a-radio-button value="0" style="width: 25%;">今日</a-radio-button>
                <a-radio-button value="1" style="width: 25%;">昨天</a-radio-button>
                <a-radio-button value="-6" style="width: 25%;">近7天</a-radio-button>
                <a-radio-button value="-29" style="width: 25%;">近30天</a-radio-button>
              </a-radio-group>
            </a-form-model-item>
          </a-col>
          <a-col :span="8">
            <a-form-model-item label="自定义时间" :label-col="{ span: 6 }" :wrapper-col="{ span: 18 }">
              <a-range-picker v-model="searchForm.dateRange" @change="changeDate" style="width: 100%;" />
            </a-form-model-item>
          </a-col>
          <a-col :span="6">
            <a-form-model-item label="分类" :label-col="{ span: 4 }" :wrapper-col="{ span: 20 }">
              <a-select v-model="searchForm.category" allowClear style="width: 100%;" @change="changeCategory">
                <a-select-option v-for="item in categoryItems" :key="item.id" :value="item.id">{{item.name}}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
      </a-card>
    </div>

    <div class="stats-section">
      <a-row :gutter="16">
        <a-col :span="8">
          <a-card class="stat-card sales-count">
            <div class="stat-icon">
              <a-icon type="shopping-cart" />
            </div>
            <div class="stat-content">
              <div class="stat-title">销售次数</div>
              <div class="stat-value">{{totalCount}}</div>
              <div class="stat-desc">总交易笔数</div>
            </div>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card class="stat-card sales-quantity">
            <div class="stat-icon">
              <a-icon type="appstore" />
            </div>
            <div class="stat-content">
              <div class="stat-title">销售数量</div>
              <div class="stat-value">{{totalQuantity}}</div>
              <div class="stat-desc">总销售产品数</div>
            </div>
          </a-card>
        </a-col>
        <a-col :span="8">
          <a-card class="stat-card sales-amount">
            <div class="stat-icon">
              <a-icon type="wallet" />
            </div>
            <div class="stat-content">
              <div class="stat-title">销售金额</div>
              <div class="stat-value">¥ {{totalAmount}}</div>
              <div class="stat-desc">总营业额</div>
            </div>
          </a-card>
        </a-col>
      </a-row>
    </div>

    <div class="tab-section">
      <a-card class="data-card">
        <div class="tab-header">
          <a-radio-group v-model="currentTab" button-style="solid" @change="changeTab">
            <a-radio-button value="flow">流水明细</a-radio-button>
            <a-radio-button value="goods">商品汇总</a-radio-button>
          </a-radio-group>
        </div>
        
        <div class="tab-content">
          <flow-pane v-show="currentTab === 'flow'" :items="items" :loading="loading" :pagination="pagination" @tableChange="tableChange" />
          <goods-pane v-show="currentTab === 'goods'" :items="items" :loading="loading" :pagination="pagination" @tableChange="tableChange" />
        </div>
        
        <div class="pagination-spinner">
          <a-spin :spinning="loading && searchForm.page > 1" />
        </div>
      </a-card>
    </div>
  </div>
</template>

<script>
  import { salesReportStatistics, salesReportDetialsList, salesReportByGoodsList } from '@/api/report'
  import { goodsClassificationOption } from '@/api/option'
  import NP from 'number-precision'
  import moment from 'moment'
  import {caigou_echarts_data, xiaoshou_echarts_data} from '@/views/Echarts/echarts1'
  import * as echarts from "echarts";

  export default {
    name: 'SalesReport',
    components: {
      FlowPane: () => import('./flowPane'),
      GoodsPane: () => import('./goodsPane'),
    },
    data() {
      return {
        NP,
        currentTab: 'flow',
        radioValue: '0',
        tabList: [

        ],
        searchForm: {
          dateRange: [moment().startOf('day'), moment().startOf('day')],
          category: null,
          page: 1,
          page_size: 16
        },
        loading: true,
        categoryItems: [],
        total: {
          quantity: 0,
          cost: 0,
          amount: 0,
        },
        items: [],
        pagination: { current: 1, total: 0, pageSize: 16 },
      };
    },
    computed: {
      totalCount() {
        return this.total.total_count ? this.total.total_count : 0
      },
      totalQuantity() {
        return this.total.total_quantity ? this.total.total_quantity : 0
      },
      totalAmount() {
        return this.total.total_amount ? NP.round(this.total.total_amount, 2) : 0
      },
    },
    methods: {
      initailize() {
        if (this.$route.query.type) {
          this.currentTab = this.$route.query.type;
        } else {
          this.$router.replace({ query: { type: this.currentTab } })
        }
        this.list();
        goodsClassificationOption({ page_size: 99999 }).then(resp => {
          this.categoryItems = resp.results;
        });
      },
      list() {
        let form = {
          start_date: this.searchForm.dateRange.length > 0 ? this.searchForm.dateRange[0].format('YYYY-MM-DD') : null,
          end_date: this.searchForm.dateRange.length > 0 ? this.searchForm.dateRange[1].format('YYYY-MM-DD') : null,
          category: this.searchForm.category,
          page: this.searchForm.page,
          page_size: this.searchForm.page_size,
        };
        if (form.end_date) {
          form.end_date = moment(form.end_date).add(1, 'days').format('YYYY-MM-DD');
        }

        this.loading = true;
        salesReportStatistics(form).then(resp => {
          this.total = resp;
        })
        if (this.currentTab === 'flow') {
          salesReportDetialsList(form).then(resp => {
            this.items = resp.results;
            this.pagination.total = resp.count;

            // var myChart = echarts.init.sql(document.getElementById('xiaoshou_echarts'));
            // myChart.setOption(xiaoshou_echarts_data(resp.results));
          }).finally(() => {
            this.loading = false;
          });
        } else {
          salesReportByGoodsList(form).then(resp => {
            this.items = resp.results;
            this.pagination.total = resp.count;

            // var myChart = echarts.init.sql(document.getElementById('xiaoshou_echarts'));
            // myChart.setOption(xiaoshou_echarts_data(resp.results));
          }).finally(() => {
            this.loading = false;
          });
        }
      },
      tableChange(pagination, filters, sorter) {
        this.searchForm.page = pagination.current;
        this.pagination.current = pagination.current;
        this.searchForm.ordering = `${sorter.order == 'descend' ? '-' : ''}${sorter.field}`;
        this.list();
      },
      search() {
        this.searchForm.page = 1;
        this.pagination.current = 1;
        this.list();
      },
      changeTab(key) {
        this.currentTab = key;
        this.$router.replace({ query: { type: this.currentTab } })
        this.resetForm();
        this.search();
      },
      changeRadio(evt) {
        let value = evt.target.value;
        if (value < 0) {
          this.searchForm.dateRange = [moment().startOf('day').add(value, 'day'), moment().startOf('day')]
        } else {
          this.searchForm.dateRange = [moment().startOf('day').subtract(value, 'day'), moment().startOf('day').subtract(value, 'day'),]
        }
        this.search();
      },
      changeDate() {
        this.radioValue = null;
        this.search();
      },
      changeCategory() {
        this.search();
      },
      resetForm() {
        this.radioValue = '0';
        this.searchForm = {
          dateRange: [moment().startOf('day'), moment().startOf('day')],
          category: null,
          page: 1,
          page_size: 16
        };
      },
    },
    mounted() {
      this.initailize();
    },
  }
</script>

<style scoped>
  .report-container {
    display: flex;
    flex-direction: column;
    gap: 16px;
  }
  
  .filter-card {
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    margin-bottom: 0;
  }
  
  .stats-section {
    margin: 0;
  }
  
  .stat-card {
    border-radius: 8px;
    height: 140px;
    display: flex;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
  }
  
  .stat-icon {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 80px;
    font-size: 32px;
    color: rgba(255, 255, 255, 0.8);
  }
  
  .stat-content {
    flex: 1;
    padding: 16px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    overflow: visible;
  }
  
  .stat-title {
    font-size: 16px;
    font-weight: 500;
    margin-bottom: 12px;
    color: rgba(0, 0, 0, 0.65);
  }
  
  .stat-value {
    font-size: 32px;
    font-weight: 600;
    margin-bottom: 12px;
    line-height: 1.2;
    overflow: visible;
    white-space: nowrap;
  }
  
  .stat-desc {
    font-size: 12px;
    color: rgba(0, 0, 0, 0.45);
  }
  
  .sales-count {
    background: linear-gradient(135deg, #1890ff 0%, #ffffff 100%);
  }
  
  .sales-count .stat-icon {
    background-color: #1890ff;
  }
  
  .sales-quantity {
    background: linear-gradient(135deg, #52c41a 0%, #ffffff 100%);
  }
  
  .sales-quantity .stat-icon {
    background-color: #52c41a;
  }
  
  .sales-amount {
    background: linear-gradient(135deg, #fa8c16 0%, #ffffff 100%);
  }
  
  .sales-amount .stat-icon {
    background-color: #fa8c16;
  }
  
  .data-card {
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
  }
  
  .tab-header {
    margin-bottom: 16px;
    border-bottom: 1px solid #f0f0f0;
    padding-bottom: 16px;
  }
  
  .tab-content {
    min-height: 400px;
  }
  
  .pagination-spinner {
    text-align: center;
    margin-top: 16px;
  }
</style>