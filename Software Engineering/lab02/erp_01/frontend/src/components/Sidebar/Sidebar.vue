<template>
  <div class="sidebar-container">
    <div class="logo" @click="$router.push('/')">
      <a-icon type="appstore" theme="filled" class="logo-icon" />
      <span v-if="!collapsed" class="logo-text">{{ ProjectName }}</span>
    </div>
    
    <div class="menu-container">
      <a-menu 
        theme="dark" 
        mode="inline" 
        :selectedKeys="selectedKeys" 
        :openKeys="openKeys" 
        :inline-collapsed="collapsed"
        @click="switchView" 
        @openChange="openChange">
        
        <a-menu-item key="/home" class="menu-item">
          <a-icon type="dashboard" />
          <span>数据看板</span>
      </a-menu-item>

        <a-sub-menu v-for="menu in menus" :key="menu.key" class="sub-menu">
        <span slot="title">
            <a-icon :type="menu.icon" />
            <span>{{menu.name}}</span>
          </span>
          <a-menu-item v-for="submenu of menu.submenus" :key="submenu.key" class="menu-item">
            {{submenu.name}}
          </a-menu-item>
      </a-sub-menu>
    </a-menu>
        </div>
  </div>
</template>

<script>
  import menus from '@/menus.js'

  export default {
    name: 'Sidebar',
    props: ['collapsed'],
    data() {
      return {
        menus,
        openKeys: [],
        selectedKeys: [],
      };
    },
    methods: {
      initialize() {
        this.changeRoute(this.$route.path);
      },
      switchView(item) {
        if (this.$route.path !== item.key) {
          this.$router.push(item.key);
        }
      },
      openChange(openKeys) {
        this.openKeys = [openKeys[openKeys.length - 1]];
      },
      changeRoute(path) {
        this.selectedKeys = [path];
        for (let m of menus) {
          if (m.submenus.findIndex(item => item.key == path) != -1) {
            this.openKeys = [m.key];
            return
          }
        }
      },
    },
    watch: {
      $route(to) {
        this.changeRoute(to.path);
      },
    },
    created() {
      this.initialize();
    },
  }
</script>

<style scoped>
  .sidebar-container {
    display: flex;
    flex-direction: column;
    height: 100%;
  }
  
  .logo {
    height: 64px;
    padding: 16px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    overflow: hidden;
    cursor: pointer;
    transition: all 0.3s;
  }
  
  .logo-icon {
    font-size: 24px;
    color: #2195f3;
  }
  
  .logo-text {
    color: #fff;
    margin-left: 12px;
    font-weight: 600;
    font-size: 16px;
    white-space: nowrap;
  }
  
  .menu-container {
    flex: 1;
    overflow-y: auto;
    overflow-x: hidden;
  }
  
  .menu-container::-webkit-scrollbar {
    width: 6px;
    height: 6px;
  }
  
  .menu-container::-webkit-scrollbar-thumb {
    background: rgba(255, 255, 255, 0.2);
    border-radius: 3px;
  }
  
  :deep(.ant-menu) {
    background: transparent !important;
    border-right: none;
  }
  
  :deep(.ant-menu-dark .ant-menu-inline.ant-menu-sub) {
    background: #1e2a38 !important;
  }
  
  .menu-item {
    margin: 4px 0;
  }
</style>