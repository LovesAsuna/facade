<template>
  <div class="ch intro">
    <div class="container">
      <div class="hello">
        <h1 id="slogan">
          欢迎大家光临星象馆<br>
          这里有着无论何时永远不会消失<br>
          美丽的无穷光辉<br>
          满天的星星等候着大家的到来</h1>
        <h2>
          <div class="circle">
            <span></span>
            <span></span>
            <span></span>
          </div>
          冰星 / LovesAsuna
        </h2>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Intro"
}
</script>

<style>
.intro {
  position: relative
}

.ch {
  width: 100%;
  padding: 80px 0;
  animation: fadedown 1s cubic-bezier(.19, 1, .22, 1);
  -webkit-animation: fadedown 1s cubic-bezier(.19, 1, .22, 1);
  -ms-animation: fadedown 1s cubic-bezier(.19, 1, .22, 1);
  -moz-animation: fadedown 1s cubic-bezier(.19, 1, .22, 1)
}

.ch h2.chtitle {
  padding-bottom: 30px;
  font-size: 26px;
  letter-spacing: .2em;
  color: rgba(255, 255, 255, .5)
}

.ch h2.chtitle span {
  color: #fff
}

.ch h2.chtitle:after {
  content: '';
  display: block;
  width: 10%;
  height: 5px;
  background-color: rgba(255, 255, 255, .5);
  margin-top: 30px
}

.container {
  position: relative;
  width: 1000px;
  margin: 0 auto;
  height: 100%;
  padding: 20px 0
}
</style>
