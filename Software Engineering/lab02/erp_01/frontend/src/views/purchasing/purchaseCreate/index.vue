<template>
  <div>
    <a-card title="采购订单">
      <a-spin :spinning="loading">
        <a-form-model ref="form" :model="form" :rules="rules" :label-col="{ span: 8 }" :wrapper-col="{ span: 16 }">
          <a-row>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="number" label="采购编号">
                <a-input v-model="form.number" />
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="supplier" label="供应商">
                <a-select v-model="form.supplier" style="width: 100%">
                  <a-select-option v-for="item in suppliersItems" :key="item.id" :value="item.id">
                    {{ item.name }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col :span="6" style="width: 320px;">
              <a-form-model-item prop="warehouse" label="仓库">
                <a-select v-model="form.warehouse" style="width: 100%" @change="changeWarehouse">
                  <a-select-option v-for="item in warehouseItems" :key="item.id" :value="item.id">
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
              <a-form-model-item prop="remark" label="备注">
                <a-input v-model="form.remark" allowClear />
              </a-form-model-item>
            </a-col>
          </a-row>
        </a-form-model>

        <a-divider orientation="left">产品信息</a-divider>

        <div>
          <a-row gutter="16">
            <a-space>
              <!-- <a-input placeholder="请扫描产品条码"></a-input> -->
              <a-button type="primary" @click="openMaterialModal">添加产品</a-button>
            </a-space>
          </a-row>
          <div style="margin-top: 16px;">
            <a-table rowKey="id" size="middle" :columns="columns" :data-source="goodsData" :pagination="false">
              <div slot="purchase_quantity" slot-scope="value, item">
                <div v-if="item.isTotal">{{ value }}</div>
                <a-input-number v-else v-model="item.purchase_quantity" :min="0" size="small"></a-input-number>
              </div>
              <div slot="purchase_price" slot-scope="value, item">
                <a-input-number
                  v-if="!item.isTotal"
                  v-model="item.purchase_price"
                  :min="0"
                  size="small"
                ></a-input-number>
              </div>
              <div slot="tax" slot-scope="value, item">
                <div  v-if="!item.isTotal" style="display: flex;flex-direction: row;">
                  <a-input-number
                      v-model="item.tax"
                      :min="0"
                      size="small"
                  ></a-input-number>
                  <a>%</a>
                </div>

              </div>
              <div slot="action" slot-scope="value, item">
                <a-button-group v-if="!item.isTotal" size="small">
                  <a-button type="danger" @click="removeMaterial(item)">移除</a-button>
                </a-button-group>
              </div>
            </a-table>
          </div>
        </div>

        <a-divider orientation="left">账单信息</a-divider>

        <div>
          <a-row gutter="16">
            <a-col :span="4">
              <a-form-model-item
                prop="other_amount"
                label="其他费用"
                :label-col="{ span: 24 }"
                :wrapper-col="{ span: 24 }"
              >
                <a-input-number v-model="form.other_amount" style="width: 100%;" />
              </a-form-model-item>
            </a-col>
            <a-col :span="4">
              <a-form-model-item label="总计金额(元)" :label-col="{ span: 24 }" :wrapper-col="{ span: 24 }">
                <a-input-number :value="totalAmount" :disabled="true" style="width: 100%;" />
              </a-form-model-item>
            </a-col>
          </a-row>
        </div>
      </a-spin>
      <div style="width: 100%;display: flex;justify-content: center;">
        <div >
        <a-popconfirm title="确定保存吗?" @confirm="create">
          <a-button type="primary" :loading="loading">保存</a-button>
        </a-popconfirm>
      </div>
      </div>

    </a-card>
    <materials-select-modal
      v-model="materialsSelectModalVisible"
      :warehouse="form.warehouse"
      @select="onSelectMaterial"
    ></materials-select-modal>
  </div>
</template>

<script>
import moment from "moment";
import { getPurchaseOrderNumber } from "@/api/data";
import { purchaseOrderCreate } from "@/api/purchasing";
import { suppliersOption, userOption, warehousesOption, inventoriesOption } from "@/api/option";
import NP from 'number-precision'

export default {
  components: {
    MaterialsSelectModal: () => import("@/components/MaterialSelectModal/index"),
  },
  data() {
    return {
      description: "新增",
      warehouseItems: [],
      handlerItems: [],
      suppliersItems: [],
      materialsSelectModalVisible: false,
      loading: false,
      model: {},
      form: {},
      rules: {
        number: [{ required: true, message: "请输入编号", trigger: "change" }],
        warehouse: [{ required: true, message: "请选择仓库", trigger: "change" }],
        supplier: [{ required: true, message: "请选择供应商", trigger: "change" }],
        handler: [{ required: true, message: "请选择经手人", trigger: "change" }],
        handle_time: [{ required: true, message: "请选择处理日期", trigger: "change" }],
        other_amount: [
          { pattern: new RegExp(/^\d{0,14}(?:\.\d{0,2})?$/), message: "其他费用格式不正确", trigger: "change" },
        ],
      },
      columns: [
        {
          title: "序号",
          dataIndex: "index",
          key: "index",
          width: 45,
          customRender: (value, item, index) => {
            return item.isTotal ? "合计" : index + 1;
          },
        },
        {
          title: "名称",
          dataIndex: "name",
          key: "name",
          width: 130,
        },
        {
          title: "编号",
          dataIndex: "number",
          key: "number",
          width: 130,
        },
        {
          title: "规格",
          dataIndex: "spec",
          key: "spec",
          width: 130,
        },
        {
          title: "单位",
          dataIndex: "unit",
          key: "unit",
          width: 80,
        },
        {
          title: "采购数量",
          dataIndex: "purchase_quantity",
          key: "purchase_quantity",
          width: 80,
          scopedSlots: { customRender: "purchase_quantity" },
        },
        {
          title: "采购单价(元)",
          dataIndex: "purchase_price",
          key: "purchase_price",
          width: 100,
          scopedSlots: { customRender: "purchase_price" },
        },
        {
          title: "税率",
          dataIndex: "tax",
          key: "tax",
          width: 80,
          scopedSlots: { customRender: "tax" },
        },
        {
          title: "金额(元)",
          dataIndex: "totalAmount",
          key: "totalAmount",
          width: 200,
          customRender: (value, item) => {
            if (item.isTotal) return value;
            value = NP.times(item.purchase_quantity, item.purchase_price,((item.tax/100 || 0) +1));
            return item.id ? NP.round(value, 2) : "";
          },
        },
        {
          title: "操作",
          dataIndex: "action",
          key: "action",
          width: 80,
          scopedSlots: { customRender: "action" },
        },
      ],
      materialItems: []
    };
  },
  computed: {
    totalAmount() {
      let totalAmount = 0;
      for (let item of this.materialItems) {
        let amount = NP.times(item.purchase_quantity, item.purchase_price,((item.tax/100 || 0) +1));
        totalAmount = NP.plus(totalAmount, amount);
      }

      totalAmount = NP.plus(totalAmount, this.form.other_amount || 0);
      return totalAmount;
    },
    goodsData() {
      // 统计合计
      let totalQuantity = 0,
        totalAmount = 0;
      for (let item of this.materialItems) {
        totalQuantity = NP.plus(totalQuantity, item.purchase_quantity);
        let amount = NP.times(item.purchase_quantity, item.purchase_price,((item.tax/100 || 0) +1));
        totalAmount = NP.plus(totalAmount, amount);
      }
      return [
        ...this.materialItems,
        {
          id: "-1",
          isTotal: true,
          name: "",
          purchase_quantity: totalQuantity,
          totalAmount: totalAmount,
        },
      ];
    }
  },
  methods: {
    moment,
    initData() {
      this.resetForm();
      warehousesOption({ page_size: 999999, is_active: true }).then((data) => {
        this.warehouseItems = data.results;
      });
      userOption({ page_size: 999999, is_active: true }).then((data) => {
        this.handlerItems = data.results;
      });
      suppliersOption({ page_size: 999999, is_active: true }).then((data) => {
        this.suppliersItems = data.results;
      });
    },
    changeWarehouse() {
      this.materialItems = [];
    },
    openMaterialModal() {
      if (!this.form.warehouse) {
        this.$message.warn("请先选择仓库！");
        return false;
      }
      this.materialsSelectModalVisible = true;
    },
    onSelectMaterial(item) {
      let index = this.materialItems.findIndex((_item) => _item.id == item.id);
      if (index != -1) {
        this.$message.warn("产品已存在");
        return;
      }
      this.materialItems = this.$functions.insertItem(this.materialItems, {
        id: item.id,
        goods: item.goods,
        number: item.goods_number,
        name: item.goods_name,
        spec: item.goods_spec,
        unit: item.unit_name,
        purchase_quantity: 1,
        purchase_price: item.purchase_price,
        tax: 0,
        total_quantity: item.total_quantity,
      });
    },
    removeMaterial(item) {
      this.materialItems = this.$functions.removeItem(this.materialItems, item);
    },
    create() {
      this.$refs.form.validate(async (valid) => {
        if (valid) {
          let ifHasEmptyGoods = false;

          if (this.materialItems.length == 0) {
            this.$message.warn("未添加产品");
            return false;
          }
          this.materialItems.map((item) => {
            if (item.purchase_price === null || !item.purchase_quantity) {
              ifHasEmptyGoods = true;
            }
          });
          if (ifHasEmptyGoods) {
            this.$message.warn("采购单价和采购数量必填");
            return false;
          }

          this.loading = true;
          let formData = {
            ...this.form,
            purchase_account_items: [],
            purchase_goods_items: this.materialItems.map((item) => {
              return {
                goods: item.goods,
                purchase_quantity: item.purchase_quantity,
                purchase_price: item.purchase_price*(1+item.tax/100), 
              };
            }),
          };
          formData.total_amount = this.totalAmount;

          purchaseOrderCreate(formData)
            .then((data) => {
              this.$message.success("创建成功");
              this.$router.push({ path: "/purchasing/purchase_record" });
            })
            .finally(() => {
              this.loading = false;
            });
        }
      });
    },
    resetForm() {
      this.form = { other_amount: 0 };
      getPurchaseOrderNumber().then((data) => {
        this.form = { ...this.form, number: data.number };
      });
      this.materialItems = [];
    },
  },
  mounted() {
    this.initData();
  },
};
</script>
