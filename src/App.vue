<template>
  <div id="app">
    <Navigation></Navigation>
    <Background></Background>
    <Main></Main>
  </div>
</template>

<script>
import Navigation from './components/Navigation.vue'
import Background from './components/Background.vue'
import Main from './components/Main.vue'
import page from './assets/page.js'

export default {
  name: 'App',
  components: {
    Navigation,
    Background,
    Main
  },
  data() {
    return {
      msg: [
        "希望能成为有趣的人",
        "给时光以生命<br>给岁月以文明",
        "你好，请多指教",
        "当你在凝视着网页的时候<br>网页也正在凝视着你",
        "苟……",
        "ご注文はねこですか？",
        "平凡的日常正奇迹的发生着",
        "Lata<br>lulila<br>lulula<br>lulalila ♪♫",
        "ただの人間には<br>興味ありません！",
        "さあ、ゲームを始めよう",
        "搞事！搞事！搞事！",
        "敬畏之心！",
        "赞美之心！",
        "我很好奇！",
        "欢迎大家光临星象馆<br>这里有着无论何时永远不会消失<br>美丽的无穷光辉<br>满天的星星等候着大家的到来"
      ]
    }
  },
  mounted: function () {
    page.show(this.msg)
  }
}
</script>

<style>
* {
  padding: 0;
  margin: 0;
  transition-timing-function: cubic-bezier(.19, 1, .22, 1)
}

body, html {
  font-family: "Microsoft YaHei";
  -webkit-font-smoothing: antialiased;
  color: #fff;
  line-height: 1.5;
  min-width: 1150px;
  background-color: #212121;
  font-size: 14px;
  overflow-x: hidden
}
</style>
<style src="./assets/flaghome.css"></style>
<style src="./assets/iconfont.css"></style>
