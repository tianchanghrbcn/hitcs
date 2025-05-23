<template>
  <div>
    <a-layout style="min-height: 100vh;">
      <a-layout-sider class="sidebar" width="256" v-model="collapsed" :trigger="null" collapsible>
        <sidebar :collapsed="collapsed" />
      </a-layout-sider>

      <a-layout v-if="isLogin" style="margin-left: 256px; transition: all 0.2s;" :style="collapsed ? 'margin-left: 80px;' : ''">
        <a-layout-header class="headbar">
          <headbar :collapsed="collapsed" :username="username" @toggleCollapsed="toggleCollapsed" />
        </a-layout-header>

        <a-layout-content style="padding: 16px; background: #f5f7fa; min-height: calc(100vh - 64px);">
          <div style="background: white; padding: 16px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); min-height: 100%;">
            <router-view v-if="havePermisssion && isRouterAlive" />
            <a-result v-else status="403" title="403" sub-title="抱歉，您无权访问此页面" />
          </div>
        </a-layout-content>
      </a-layout>
    </a-layout>
  </div>
</template>

<script>
  import { permissions } from '@/permissions'
  // import { configList } from '@/api/system'
  import { getInfo } from '@/api/user'
  import Cookies from 'js-cookie';

  export default {
    name: 'BaseLayout',
    components: {
      Headbar: () => import('@/components/Headbar/Headbar'),
      Sidebar: () => import('@/components/Sidebar/Sidebar'),
    },
    provide() {
      return {
        reloadPage: () => {
          return this.reloadPage()
        },
      }
    },
    data() {
      return {
        isLogin: false,
        collapsed: false,
        isRouterAlive: true,
      };
    },
    computed: {
      username() {
        return this.$store.state.user.username
      },
      isManager() {
        return this.$store.state.user.isManager
      },
      permissions() {
        return this.$store.state.user.permissions
      },
      havePermisssion() {
        let permission = this.$route.meta.permission;
        return this.isManager || !(permissions[permission] && this.permissions.indexOf(permission) == -1);
      },
    },
    methods: {
      initialize() {
        if (!Cookies.get('access') || !Cookies.get('refresh')) {
          return this.$router.push('/yindao');
        }
        // this.isLogin = true;
        getInfo().then(data => {
          this.isLogin = true;
          // this.getConfig();
          this.$store.commit('setUser', data);

          // 库存预警
          if (data.inventory_warnning_count > 0) {
            this.$notification.warning({
              message: '库存预警',
              remark: `您有 ${resp.data.inventory_warnning_count} 个产品超出库存设定范围`,
            })
          }
        });
      },
      getConfig() {
        // configList()
        //   .then(resp => {
        //     this.$store.commit('setConfig', resp.data);
        //   })
        //   .catch(err => {
        //     this.$message.error(err.response.data.error);
        //   });
      },
      toggleCollapsed() {
        this.collapsed = !this.collapsed;
      },
      reloadPage() {
        this.isRouterAlive = false;
        this.$nextTick(() => this.isRouterAlive = true);
      },
    },
    mounted() {
      this.initialize();
    },
  }
</script>

<style scoped>
  .headbar {
    background: linear-gradient(135deg, #3a6186, #89253e);
    padding: 0;
    color: white;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
  }

  .sidebar {
    background: #2c3e50;
    overflow: auto;
    box-shadow: 2px 0 8px rgba(0, 0, 0, 0.15);
    height: 100vh;
    position: fixed;
    left: 0;
  }
  
  .a-layout-content {
    min-height: calc(100vh - 64px);
    background: #f0f2f5;
  }
</style>