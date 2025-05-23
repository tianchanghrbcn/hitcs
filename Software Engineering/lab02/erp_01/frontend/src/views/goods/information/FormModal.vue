<template>
  <div>
    <a-modal v-model="visible" width="750px" :confirmLoading="loading" :maskClosable="false" @cancel="cancel" @ok="confirm">
      <div slot="title">{{form.id ? '编辑产品信息' : '新增产品信息' }}</div>
      <div>
        <a-form-model
            ref="form"
            :model="form"
            :rules="rules"
            :label-col="{ span: 4, md: 8 }"
            :wrapper-col="{ span: 20, md: 16 }">
          <a-row :gutter="12">
            <a-divider orientation="left" id="basic-information">
              基本信息
            </a-divider>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="number" label="产品编号">
                <a-input v-model="form.number" />
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="name" label="产品名称">
                <a-input v-model="form.name" />
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="category" label="分类">
                <a-select v-model.number="form.category" style="width: 100%" :allowClear="true">
                  <a-select-option
                      v-for="item of classificationItems"
                      :key="item.id"
                      :value="item.id">{{ item.name }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="spec" label="规格">
                <a-input v-model="form.spec" />
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="is_active" label="状态">
                <a-select v-model="form.is_active" style="width: 100%;">
                  <a-select-option :value="1">激活</a-select-option>
                  <a-select-option :value="0">冻结</a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="remark" label="单位">
                <a-input v-model="form.remark" allowClear />
              </a-form-model-item>
            </a-col>
          </a-row>
          <a-row :gutter="12">
            <a-divider orientation="left" id="price-management">
              价格管理
            </a-divider>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="purchase_price" label="采购价(元)">
                <a-input-number v-model="form.purchase_price" style="width: 100%"/>
              </a-form-model-item>
            </a-col>
            <a-col :span="24" :md="12">
              <a-form-model-item prop="retail_price" label="零售价(元)">
                <a-input-number v-model="form.retail_price" style="width: 100%" />
              </a-form-model-item>
            </a-col>
          </a-row>
        </a-form-model>
      </div>
    </a-modal>
  </div>
</template>

<script>
import { goodsInformationCreate, goodsInformationUpdate } from '@/api/goods'

export default {
  name: 'FormModal',
  props: ['visible', 'form', 'classificationItems'],
  model: { prop: 'visible', event: 'cancel' },
  data() {
    return {
      loading: false,
      rules: {
        name: [
          { required: true, message: "请输入产品名称", trigger: "change" },
        ],
        number: [
          { required: true, message: "请输入产品编号", trigger: "change" },
        ],
      }
    };
  },
  methods: {
    confirm() {
      let formatData = {
        ...this.form
      }
      this.$refs.form.validate(valid => {
        if (valid) {
          this.loading = true;
          let func = this.form.id ? goodsInformationUpdate : goodsInformationCreate;
          func(formatData).then(data => {
            this.$message.success(this.form.id ? '修改成功' : '新增成功');
            this.$emit(this.form.id ? 'update' : 'create', data);
            this.cancel();
          }).finally(() => {
            this.loading = false;
          });
        }
      });
    },
    cancel() {
      this.$emit('cancel', false);
      this.$refs.form.resetFields();
    },
  }
}
</script>

<style scoped>
</style>