<script setup lang="ts"></script>

<template>
  <el-menu mode="horizontal" router>
    <el-menu-item index="/"
      ><el-icon color="#ffffff"><House /></el-icon>云中乐土</el-menu-item
    >
    <el-sub-menu index="/tools">
      <template #title>
        <el-icon><Grid /></el-icon>小工具</template
      >
      <el-menu-item index="/tools/holiday">你的假期</el-menu-item>
      <el-menu-item index="/tools/clock">倒计时</el-menu-item>
      <el-menu-item index="/tools/random">随机数</el-menu-item>
    </el-sub-menu>
    <el-menu-item index="/articles">
      <el-icon><Document /></el-icon>文章</el-menu-item
    >
    <el-menu-item index="/resources">
      <el-icon><Files /></el-icon>资源</el-menu-item
    >
  </el-menu>
  <div class="body_container">
    <router-view />
  </div>
</template>

<style scoped>
.body_contianer {
  margin: 10px;
}
</style>
