<template>
  <div class="background" ref="card" >
    <a-card class="card" >
      <div style="">
        <div style="text-align: center; padding-top: 16px">
          <img :src="logo" width="100" style="cursor: pointer; margin-top: 16px"  />
        </div>

        <div style="text-align: center; font-size: 20px; color: #50799e; margin-top: 8px; margin-bottom: 24px;font-weight: bold;">
          <span>{{ProjectName}}</span>
        </div>
      </div>
      <router-view />
    </a-card>
  </div>
</template>

<script>
export default {
  name: "UserLayout",
  data() {
    return {
      logo: require("@/assets/logo.png")
    };
  },
  methods: {
  },
};
</script>

<style scoped>
.card {
  width: 480px;
  border-radius: 8px;
  padding-bottom: 64px;
  margin: auto;
  color: #50799e;
}

.background {
  min-height: 100%;
  padding: 10vh 0;
  background: url("https://pic2.ziyuan.wang/user/tanfuhua/2024/08/v2-e2d0fa9819c540732a4e7e980d5b48a9_r_26ba0cd0fea17.jpg") ;
  background-size: 100% 100%;
}

.title {
  text-align: center;
  font-size: 32px;
  color: #50799e;
  margin-top: 8px;
  font-weight: bold;
}
</style>
