<template>
  <div class="footer ch">
    <div class="container">
      <h3>冰星@LovesAsuna</h3>
      <p>如果在靠近一点，是否还会有感觉</p>
      <p class="c">
        <a href="https://blog.hyosakura.com/">Say hello to me @ hyosakura.com</a>
      </p>
    </div>
  </div>
</template>

<script>
export default {
  name: "Footer"
}
</script>

<style>
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
.footer {
  text-align: center
}

.footer a {
  color: inherit;
  text-decoration: none
}

.footer a:hover {
  text-decoration: underline
}

.footer h3 {
  font-weight: 400;
  font-size: 20px;
  letter-spacing: .8em;
  margin: 6px 0
}

.footer p {
  font-size: 12px;
  letter-spacing: 1em;
  opacity: .3
}

.footer p.c {
  margin-top: 20px;
  letter-spacing: .1em
}
</style>
