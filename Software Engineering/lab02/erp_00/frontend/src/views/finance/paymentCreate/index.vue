<template>
  <div>
    <a-card title="付款单创建">
      <a-button slot="extra" type="primary" ghost @click="() => { this.$router.go(-1); }"> <a-icon
          type="left" />返回</a-button>
      <a-spin :spinning="loading">
        <a-form-model ref="form" :model="form" :rules="rules" :label-col="{ span: 8 }" :wrapper-col="{ span: 16 }">
          <a-row>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="number" label="付款编号">
                <a-input v-model="form.number" />
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="supplier" label="供应商">
                <a-select v-model="form.supplier" style="width: 100%">
                  <a-select-option v-for="item in supplierArrearsItems" :key="item.id" :value="item.id">
                    {{ item.name }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="handler" label="经手人">
                <a-select v-model="form.handler" style="width: 100%">
                  <a-select-option v-for="item in handlerItems" :key="item.id" :value="item.id">
                    {{ item.name }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="handle_time" label="处理日期">
                <a-date-picker v-model="form.handle_time" valueFormat="YYYY-MM-DD" style="width: 100%" />
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="discount_amount" label="优惠金额">
                <a-input-number v-model="form.discount_amount" style="width: 100%;" />
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="remark" label="备注">
                <a-input v-model="form.remark" allowClear />
              </a-form-model-item>
            </a-col>
          </a-row>
        </a-form-model>
        <div>
          <a-row gutter="16">
            <a-space>
              <a-button type="primary" @click="handelAddAcount">添加结算账户</a-button>
            </a-space>
          </a-row>
          <div style="margin-top: 16px;">
            <a-table rowKey="id" size="middle" :columns="columnsAccount" :data-source="accountsData" :pagination="false">
              <div slot="account" slot-scope="value, item, index">
                <a-select v-if="!item.isTotal" v-model="item.account" style="width: 100%"
                  @change="(value) => changeAccount(value, item, index)">
                  <a-select-option v-for="Account in accountsItems" :key="Account.id" :value="Account.id">
                    {{ Account.name }}
                  </a-select-option>
                </a-select>
              </div>
              <div slot="payment_amount" slot-scope="value, item, index">
                <div v-if="item.isTotal">{{ value }}</div>
                <a-input-number v-else style="width: 100%" v-model="item.payment_amount" :min="0"
                  :precision="2"></a-input-number>
              </div>
              <div slot="action" slot-scope="value, item, index">
                <a-button-group v-if="!item.isTotal" size="small">
                  <a-button type="danger" @click="removeAccount(item)">移除</a-button>
                </a-button-group>
              </div>
            </a-table>
          </div>
        </div>
      </a-spin>
      <div style="width: 100%;display: flex;justify-content: center;">
        <div style="margin-top: 32px;">
          <a-popconfirm title="确定保存吗?" @confirm="create">
            <a-button type="primary" :loading="loading">保存</a-button>
          </a-popconfirm>
        </div>
      </div>

    </a-card>
  </div>
</template>

<script>
import moment from 'moment';
import { getPaymentOrderNumber } from '@/api/data'
import { paymentOrderCreate } from '@/api/finance';
import { supplierArrearsOption, userOption, accountsOption } from '@/api/option'
import NP from 'number-precision'

export default {
  components: {
  },
  data() {
    return {
      description: '新增',
      warehouseItems: [],
      handlerItems: [],
      supplierArrearsItems: [],
      accountsItems: [],
      materialsSelectModalVisible: false,
      loading: false,
      model: {},
      form: {},
      rules: {
        number: [
          { required: true, message: '请输入编号', trigger: 'change' },
        ],
        warehouse: [
          { required: true, message: '请选择仓库', trigger: 'change' }
        ],
        supplier: [
          { required: true, message: '请选择供应商', trigger: 'change' }
        ],
        handler: [
          { required: true, message: '请选择经手人', trigger: 'change' }
        ],
        handle_time: [
          { required: true, message: '请选择处理日期', trigger: 'change' },
        ],
        discount_amount: [
          { pattern: new RegExp(/^\d{0,14}(?:\.\d{0,2})?$/), message: '优惠金额格式不正确', trigger: 'change' }
        ],
      },
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
          title: '名称',
          dataIndex: 'name',
          key: 'name',
          width: 150,
        },
        {
          title: '编号',
          dataIndex: 'number',
          key: 'number',
          width: 150,
        },
        {
          title: '规格',
          dataIndex: 'spec',
          key: 'spec',
          width: 150,
        },
        {
          title: '单位',
          dataIndex: 'unit',
          key: 'unit',
          width: 80,
        },
        {
          title: '采购数量',
          dataIndex: 'purchase_quantity',
          key: 'purchase_quantity',
          width: 120,
          scopedSlots: { customRender: 'purchase_quantity' },
        },
        {
          title: '采购单价(元)',
          dataIndex: 'purchase_price',
          key: 'purchase_price',
          width: 120,
          scopedSlots: { customRender: 'purchase_price' },
        },
        {
          title: '金额',
          dataIndex: 'totalAmount',
          key: 'totalAmount',
          width: 200,
          customRender: (value, item) => {
            if (item.isTotal) return value;
            value = NP.times(item.purchase_quantity, item.purchase_price);
            return item.id ? NP.round(value, 2) : ''
          },
        },
        {
          title: '操作',
          dataIndex: 'action',
          key: 'action',
          width: 80,
          scopedSlots: { customRender: 'action' },
        },
      ],
      materialItems: [],
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
          dataIndex: 'account',
          key: 'account',
          width: 200,
          scopedSlots: { customRender: 'account' },
        },
        {
          title: '付款金额',
          dataIndex: 'payment_amount',
          key: 'payment_amount',
          width: 200,
          scopedSlots: { customRender: 'payment_amount' },
        },
        {
          title: '操作',
          dataIndex: 'action',
          key: 'action',
          width: 80,
          scopedSlots: { customRender: 'action' },
        },
      ],
      payment_account_items: [],
    }
  },
  computed: {
    goodsData() {
      // 统计合计
      let totalQuantity = 0,
        totalAmount = 0;
      for (let item of this.materialItems) {
        totalQuantity = NP.plus(totalQuantity, item.purchase_quantity);
        let amount = NP.times(item.purchase_quantity, item.purchase_price);
        totalAmount = NP.plus(totalAmount, amount);
      }
      return [
        ...this.materialItems,
        {
          id: '-1',
          isTotal: true,
          name: '',
          purchase_quantity: totalQuantity,
          totalAmount: totalAmount,
        },
      ];
    },
    accountsData() {
      // 统计合计
      let totalAmount = 0;
      for (let item of this.payment_account_items) {
        totalAmount = NP.plus(totalAmount, item.payment_amount);
      }
      return [
        ...this.payment_account_items,
        {
          id: '-1',
          isTotal: true,
          payment_amount: totalAmount,
        },
      ];
    },
  },
  methods: {
    moment,
    initData() {
      this.resetForm();
      userOption({ page_size: 999999, is_active: true }).then(data => {
        this.handlerItems = data.results;
      });
      supplierArrearsOption({ page_size: 999999, is_active: true }).then(data => {
        this.supplierArrearsItems = data.results;
      });
      accountsOption({ page_size: 999999, is_active: true }).then(data => {
        this.accountsItems = data.results;
      });
    },
    handelAddAcount() {
      this.payment_account_items.push({
        id: this.payment_account_items.length + 1,
        account: '',
        payment_amount: 0
      });
    },
    removeAccount(item) {
      this.payment_account_items = this.$functions.removeItem(this.payment_account_items, item);
    },
    changeAccount(value, item, idx) {
      let count = this.payment_account_items.filter((_item) => {
        return _item.account == value;
      })
      if (count.length > 1) {
        this.$message.warn('已添加过改结算账户!');
        this.payment_account_items[idx].account = '';
      }
    },
    openMaterialModal() {
      if (!this.form.warehouse) {
        this.$message.warn('请先选择仓库！');
        return false;
      }
      this.materialsSelectModalVisible = true;
    },
    onSelectMaterial(item) {
      let index = this.materialItems.findIndex(_item => _item.id == item.id);
      if (index != -1) {
        this.$message.warn('产品已存在');
        return
      }
      this.materialItems = this.$functions.insertItem(this.materialItems, {
        id: item.id,
        goods: item.goods,
        number: item.goods_number,
        name: item.goods_name,
        spec: item.goods_spec,
        unit: item.unit_name,
        purchase_quantity: 1,
        purchase_price: 0,
        total_quantity: item.total_quantity
      });
    },
    removeMaterial(item) {
      this.materialItems = this.$functions.removeItem(this.materialItems, item);
    },
    create() {
      this.$refs.form.validate(async (valid) => {
        if (valid) {
          let ifHasEmptyAccounts = false;

          this.payment_account_items.map(item => {
            if (!item.account || item.payment_amount === '' || item.payment_amount === null) {
              ifHasEmptyAccounts = true;
            }
          })
          if (ifHasEmptyAccounts) {
            this.$message.warn('请将结算账户信息填写完整');
            return false
          }
          this.loading = true;
          let formData = {
            ...this.form,
            payment_account_items: this.payment_account_items.map(item => {
              delete item.id
              return item
            })
          };
          paymentOrderCreate(formData).then(data => {
            this.$message.success('创建成功');
            this.$router.push({ path: '/finance/payment' });
          }).finally(() => {
            this.loading = false;
          });
        }
      });
    },
    resetForm() {
      this.form = {};
      getPaymentOrderNumber().then(data => {
        this.form = { number: data.number }
      })
      this.materialItems = [];
      this.handelAddAcount();
    },
  },
  mounted() {
    this.initData();
  }
}
</script>