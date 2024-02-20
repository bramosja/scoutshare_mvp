<script setup>
import { ref } from 'vue'

defineProps({
  msg: String,
})

const count = ref(0)
</script>

<template>
  <div class="overlay">

    <div class="content">
      <h1>FIND THE PERFECT PLACE FOR YOUR SHOOT.</h1>
      <h3>Enter keywords for what you're looking for below and find the special spot your clients will love.</h3>
    </div>

    <div class="content">
      <h1>Images</h1>
      <h3>More images</h3>
    </div>
  </div>
</template>

<style scoped>
.content {
  display: flex;
  flex-direction: column;
}
</style>
