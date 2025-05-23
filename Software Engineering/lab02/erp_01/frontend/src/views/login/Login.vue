<template>
  <div class="login-form-container">
    <div class="welcome-section">
      <h2>欢迎回来</h2>
      <p>请登录您的账号以继续</p>
    </div>
    
    <a-form-model ref="form" :model="form" :rules="rules" layout="vertical">
      <a-form-model-item prop="username">
        <a-input 
          size="large" 
          v-model="form.username" 
          placeholder="请输入用户名"
          prefix-icon="user"
        >
          <a-icon slot="prefix" type="user" />
        </a-input>
      </a-form-model-item>
      
      <a-form-model-item prop="password">
        <a-input-password 
          size="large" 
          v-model="form.password" 
          placeholder="请输入密码"
        >
          <a-icon slot="prefix" type="lock" />
        </a-input-password>
      </a-form-model-item>
      
      <a-button 
        type="primary" 
        size="large" 
        :loading="isLoading" 
        block 
        @click="login"
        class="login-button"
      >
        登录
      </a-button>
    </a-form-model>
  </div>
</template>

<script>
import {getToken} from '@/api/user';
import Cookies from 'js-cookie';

export default {
  name: 'Login',
  data() {
    return {
      selectedKeys: ['login'],
      isLoading: false,
      form: {
        number: '2',
        username: '',
        password: '',
      },
      rules: {
        username: [
          {required: true, message: '请输入用户名', trigger: 'blur'},
        ],
        password: [
          {required: true, message: '请输入密码', trigger: 'blur'},
        ],
      }
    };
  },
  methods: {
    initialize() {
      document.onkeypress = (e) => {
        let code = document.all ? event.keyCode : e.which;
        if (code === 13) {
          this.login();
        }
      }
    },
    login() {
      this.$refs.form.validate(valid => {
        if (valid) {
          this.isLoading = true;
          getToken(this.form).then(data => {
            this.$message.success('登录成功');
            Cookies.set('access', data.access);
            Cookies.set('refresh', data.refresh);
            this.$router.push('/home');
          }).finally(() => {
            this.isLoading = false;
          });
        }
      });
    },
  },
  created() {
    this.initialize();
  },
}
</script>

<style scoped>
.login-form-container {
  padding: 0 20px;
}

.welcome-section {
  text-align: center;
  margin-bottom: 32px;
}

.welcome-section h2 {
  font-size: 24px;
  color: #3a6186;
  margin-bottom: 8px;
}

.welcome-section p {
  color: #718096;
  font-size: 14px;
}

.login-button {
  height: 44px;
  font-size: 16px;
  margin-top: 16px;
  background: linear-gradient(to right, #3a6186, #89253e);
  border: none;
  box-shadow: 0 4px 12px rgba(138, 75, 175, 0.2);
}
</style>
