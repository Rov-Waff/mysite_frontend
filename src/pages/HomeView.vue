<template>
  <div class="home">
    <el-card id="me" style="max-width: 480px" shadow="hover">
      <el-avatar src="favicon.ico" />
      <h1>xiaole233的云上乐土</h1>
      <p>计算，为了不可计算的<span class="point">价值</span></p>
      <p>编码，为了未曾编码的<span class="point">灵感</span></p>
      <div id="contacts">
        <el-button @click="to_github">Github</el-button>
        <el-button @click="to_lgr" type="primary">洛谷</el-button>
        <el-button @click="to_np" type="danger">猫报</el-button>
        <el-button @click="to_cdm" type="success">猫站</el-button>
      </div>
    </el-card>
    <el-card>
      <template #header>答案之书</template>
      <div style="display: flex; flex-direction: row; gap: 2px">
        <el-input placeholder="你的问题" v-model="question" />
        <el-button type="primary" @click="to_bd">获取答案</el-button>
      </div>
    </el-card>
    <el-card class="articles">
      <template #header>
        <div class="card-header">
          <span>小文章</span>
        </div>
      </template>
      <p v-for="o in 4" :key="o" class="text item">{{ 'List item ' + o }}</p>
    </el-card>
  </div>
</template>

<style scoped>
.home {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  /* justify-content: flex-start; */
  justify-content: center;
  align-items: center;
  align-content: stretch;
  gap: 5px;
  margin-top: 10px;
}
#me {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
  justify-content: flex-start;
  align-items: center;
  align-content: stretch;
  gap: 5px;
  margin-top: 10px;
  text-align: center;
}
h1 {
  background-image: linear-gradient(90deg, #43e97b 0%, #38f9d7 100%);
  background-clip: text;
  color: transparent;
}
.point {
  color: #38f9d7;
  font-size: large;
}
.articles {
  max-width: 100vh;
  width: 100vh;
}
</style>

<script lang="ts" setup>
import { ref } from 'vue'

const question = ref()
const to_github = () => {
  window.location.href = 'https://github.com/Rov-Waff'
}
const to_lgr = () => {
  window.location.href = 'https://www.luogu.com.cn/user/928882'
}
const to_np = () => {
  window.location.href = 'https://cdm-newsletter.pages.dev/'
}
const to_cdm = () => {
  window.location.href = 'https://shequ.codemao.cn/user/2615505'
}
const to_bd = () => {
  window.location.href = `https://www.baidu.com/#ie=UTF-8&wd=${question.value}`
}
</script>
