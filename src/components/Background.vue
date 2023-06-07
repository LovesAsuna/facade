<template>
  <div class="background">
    <canvas id="startrack" width="1536" height="1039"></canvas>
    <div class="cover"></div>
  </div>
</template>

<script>
export default {
  name: "Background"
}
</script>

<style>
#startrack {
  height: 140%;
  width: 100%
}

.background.fixed {
  position: fixed;
  top: -60%
}

.background {
  position: absolute;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh
}

.background .cover {
  position: absolute;
  bottom: -42%;
  left: 0;
  height: 100%;
  width: 100%;
  background: linear-gradient(to top, rgba(32, 32, 32, 1) 30%, rgba(32, 32, 32, 0) 100%)
}
</style>
