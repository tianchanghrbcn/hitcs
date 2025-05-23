<template>
  <div class="login-container">
    <div class="login-background"></div>
    <div class="login-content">
      <a-card class="login-card">
        <div class="login-header">
          <a-icon type="database" class="login-logo" />
          <h1 class="login-title">{{ProjectName}}</h1>
          <p class="login-subtitle">{{OnwerName}}</p>
        </div>
        <router-view />
      </a-card>
    </div>
  </div>
</template>

<script>
export default {
  name: "UserLayout",
  data() {
    return {};
  },
  methods: {
  },
};
</script>

<style scoped>
.login-container {
  display: flex;
  min-height: 100vh;
  position: relative;
  overflow: hidden;
}

.login-background {
  position: absolute;
  width: 100%;
  height: 100%;
  background: linear-gradient(135deg, #2c3e50, #4ca1af);
  z-index: -1;
}

.login-background::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 800 800"><path fill="rgba(255,255,255,0.05)" d="M769 229L1037 260.9M927 880L731 737 520 660 309 538 40 599 295 764 126.5 879.5 40 599-197 493 102 382-31 229 126.5 79.5-69-63"></path><path fill="rgba(255,255,255,0.05)" d="M-31 229L237 261M39 880L-69 737 127 661 8 538 295 599 294 764 126.5 879.5 8 599-197 493 102 382-31 229 126.5 79.5-69-63"></path><path fill="rgba(255,255,255,0.05)" d="M520 660L578 842 731 737 840 599 603 493 520 660 295 764 40 599 520 538 578 842 295 764 309 538 40 599 603 493 520 660"></path></svg>');
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  opacity: 0.2;
}

.login-content {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  padding: 20px;
}

.login-card {
  width: 420px;
  border-radius: 16px;
  padding: 24px;
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
  background: rgba(255, 255, 255, 0.9);
  backdrop-filter: blur(10px);
}

.login-header {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-bottom: 24px;
}

.login-logo {
  font-size: 48px;
  color: #3a6186;
}

.login-title {
  font-size: 24px;
  font-weight: 600;
  color: #3a6186;
  margin: 16px 0 8px;
}

.login-subtitle {
  font-size: 14px;
  color: #718096;
  margin: 0;
}
</style>
