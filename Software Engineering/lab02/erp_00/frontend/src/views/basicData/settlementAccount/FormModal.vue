<template>
  <div>
    <a-modal v-model="visible" :confirmLoading="loading" :maskClosable="false" @cancel="cancel" @ok="confirm">
      <div slot="title">{{ form.id ? "编辑结算账户" : "新增结算账户" }}</div>
      <div>
        <a-form-model ref="form" :model="form" :rules="rules" :label-col="{ span: 4 }" :wrapper-col="{ span: 16 }">
          <a-form-model-item prop="name" label="账户名称">
            <a-input v-model="form.name" />
          </a-form-model-item>
          <a-form-model-item prop="number" label="账户编号">
            <a-input v-model="form.number" />
          </a-form-model-item>
          <a-form-model-item prop="type" label="账户类型">
            <a-select v-model="form.type" style="width: 100%">
              <a-select-option v-for="item in typeOptions" :key="item.id" :value="item.id">
                {{ item.name }}
              </a-select-option>
            </a-select>
          </a-form-model-item>
          <a-form-model-item prop="holder" label="开户人">
            <a-input v-model="form.holder" />
          </a-form-model-item>
          <a-form-model-item prop="card_number" label="开户账号">
            <a-input v-model="form.card_number" />
          </a-form-model-item>
          <a-form-model-item prop="remark" label="备注">
            <a-input v-model="form.remark" allowClear />
          </a-form-model-item>
          <a-form-model-item prop="is_active" label="状态">
            <a-select v-model="form.is_active" style="width: 100%">
              <a-select-option :value="true">激活</a-select-option>
              <a-select-option :value="false">冻结</a-select-option>
            </a-select>
          </a-form-model-item>
          <a-form-model-item prop="initial_balance_amount" label="初期余额">
            <a-input-number v-model="form.initial_balance_amount" style="width: 100%" />
          </a-form-model-item>
        </a-form-model>
      </div>
    </a-modal>
  </div>
</template>

<script>
import { settlementAccountCreate, settlementAccountUpdate } from "@/api/basicData";

export default {
  name: "FormModal",
  props: ["visible", "form"],
  model: { prop: "visible", event: "cancel" },
  data() {
    return {
      typeOptions: [
        { id: "cash", name: "现金" },
        { id: "alipay", name: "支付宝" },
        { id: "wechat", name: "微信钱包" },
        { id: "bank_account", name: "银行账户" },
        { id: "other", name: "其他" },
      ],
      rules: {
        name: [
          { required: true, message: "请输入账户名称", trigger: "change" },
          { max: 64, message: "超出最大长度 (64)", trigger: "change" },
        ],
        number: [
          { required: true, message: "请输入账户编号", trigger: "change" },
          { max: 32, message: "超出最大长度 (32)", trigger: "change" },
        ],
        initial_balance_amount: [
          { pattern: new RegExp(/^\d{0,14}(?:\.\d{0,2})?$/), message: "初期余额格式不正确", trigger: "change" },
        ],
      },
      loading: false,
    };
  },
  methods: {
    confirm() {
      this.$refs.form.validate((valid) => {
        if (valid) {
          this.loading = true;
          let func = this.form.id ? settlementAccountUpdate : settlementAccountCreate;
          func(this.form)
              .then((data) => {
                this.$message.success(this.form.id ? "修改成功" : "新增成功");
                this.$emit(this.form.id ? "update" : "create", data);
                this.cancel();
              })
              .finally(() => {
                this.loading = false;
              });
        }
      });
    },
    cancel() {
      this.$emit("cancel", false);
      this.$refs.form.resetFields();
    },
  },
};
</script>

<style scoped></style>
