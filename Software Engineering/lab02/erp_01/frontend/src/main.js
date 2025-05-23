import functions from "@/utils/functions";
import VueRouter from "vue-router";
import router from "./router";
import store from "./store";
import App from "./App.vue";
import Vue from "vue";
import Viser from "viser-vue";
import Antd from "ant-design-vue/es";
import htmlToPdf from "@/utils/htmlToPdf";


import "ant-design-vue/dist/antd.less";

Vue.config.productionTip = true;
Vue.prototype.$functions = functions;
Vue.use(VueRouter);
Vue.use(Viser);
Vue.use(Antd);
Vue.use(htmlToPdf);


Vue.prototype.ProjectName='ERP仓储管理系统'
Vue.prototype.OnwerName='企业资源管理平台'



new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount("#app");

