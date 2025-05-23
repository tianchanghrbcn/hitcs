<template>
  <div class="header-container">
    <div class="left-section">
      <a-button type="link" class="trigger-button" @click="$emit('toggleCollapsed')">
        <a-icon :type="collapsed ? 'menu-unfold' : 'menu-fold'" />
      </a-button>
      
      <div class="header-title">
        <a-icon type="database" />
        <span>{{ ProjectName }}</span>
      </div>
    </div>
    
    <div class="right-section">
      <div class="user-dropdown">
        <a-dropdown :trigger="['click']">
          <div class="user-info">
            <a-avatar class="user-avatar" icon="user" />
            <span>{{username}}</span>
          <a-icon type="down" />
          </div>
          <a-menu slot="overlay" class="user-menu">
          <a-menu-item @click="$router.push('/user/set_password')">
              <a-icon type="lock" />
            <span>修改密码</span>
          </a-menu-item>
          <a-menu-divider />
          <a-menu-item @click="logout">
              <a-icon type="logout" />
            <span>退出登录</span>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
      </div>
    </div>
  </div>
</template>

<script>
  // import { warehouseOption } from '@/api/option';
  import Cookies from 'js-cookie';

  export default {
    name: 'Headbar',
    props: ['collapsed', 'username'],
    inject: ['reloadPage'],
    data() {
      return {
        warehouseItems: [],
        currentWarehouse: '所有仓库'
      };
    },
    methods: {
      initData() {
        // warehouseOption({ page_size: 999999 }).then(data => {
        //   console.log(data.results)
        //   this.warehouseItems = [{ id: undefined, name: '所有仓库' }, ...data.results];
        // });
      },
      logout() {
        Cookies.remove('access');
        Cookies.remove('refresh');
        this.$router.push('/user/login');
      },
      onChangeWarehouse(item) {
        this.currentWarehouse = item.name;
        this.$store.commit('setWarehouse', item.id);
        this.reloadPage();
      },
    },
    mounted() {
      this.initData();
    },
  }
</script>

<style scoped>
  .header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    height: 64px;
  }

  .left-section {
    display: flex;
    align-items: center;
  }

  .trigger-button {
    color: white;
    font-size: 18px;
    padding: 0 24px;
  }

  .header-title {
    display: flex;
    align-items: center;
    color: white;
    font-weight: 600;
    font-size: 18px;
  }
  
  .header-title i {
    margin-right: 8px;
  }

  .right-section {
    display: flex;
    align-items: center;
    padding-right: 16px;
  }

  .user-dropdown {
    cursor: pointer;
  }

  .user-info {
    display: flex;
    align-items: center;
    color: white;
    padding: 0 16px;
  }

  .user-avatar {
    margin-right: 8px;
    background-color: rgba(255, 255, 255, 0.2);
  }

  .user-info span {
    margin: 0 8px;
  }

  .user-menu {
    min-width: 160px;
  }
</style>