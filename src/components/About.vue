<template>
  <div class="ch about">
    <div class="container">
      <h2 class="chtitle">
        Who is
        <span>LovesAsuna</span>
        ？
      </h2>
      <div class="clear">
        <div class="introduct">
          <img class="avatar" alt="头像" src="https://blog.hyosakura.com/avatar">
          <p>坚硬的代替了那些柔软的，清晰的取代了那些模糊的。那些滑溜溜和黏糊糊的东西，带你来到了世界的角落。</p>
          <p style="padding-bottom:1em">How lucky to meet you!</p>
          <p>
            你好，这里是梦曦·花已落
            <sup>LovesAsuna</sup>
            ，{{new Date().getFullYear()-2001}}岁，是打工人，对有趣的世界和可能有趣的你感到好奇，热爱It和ACG文化，正在尝试努力学习中。
          </p>
          <p>希望能与你在比特之海的繁星之下相见！</p>
          <div class="chatbox">
            <div class="line loading">
              <span></span>
              <span></span>
              <span></span>
            </div>
          </div>
        </div>
        <ul class="skill clear">
          <li v-for="skill in skills" :key="skill.name">
            <p>{{ skill.name }}</p>
            <div class="progress">
              <div :style="'width:' + skill.progress + '%'">
              </div>
              <span v-html="skill.desc"></span>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "About",
  data: function () {
    return {
      skills: [
        {
          name: "HTML5/CSS3",
          desc: "<del style='color: white;'>&nbsp;抄</del>制作网站的能力",
          progress: "27"
        },
        {
          name: "Java/Kotlin",
          desc: "世界上次好的语言",
          progress: "80"
        },
        {
          name: "Python",
          desc: "世界上最方便的语言",
          progress: "40"
        },
        {
          name: "PHP",
          desc: "世界上最抽象的语言",
          progress: "25"
        },
        {
          name: "Rust",
          desc: "世界上最好的语言",
          progress: "100"
        },
        {
          name: "GoLang",
          desc: "世界上次次好的语言",
          progress: "65"
        },
        {
          name: "搞事",
          desc: "让事情发生程度的能力",
          progress: "95"
        },
        {
          name: "魔法",
          desc: "和普通人相同程度的能力",
          progress: "25"
        }
      ]
    };
  }
}
</script>

<style>
.clear:after {
  content: "";
  display: block;
  height: 0;
  visibility: hidden;
  clear: both
}

.chatbox > .line {
  display: none
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

.about ul.skill li .progress div:after {
  content: '';
  display: inline-block;
  position: absolute;
  right: -4px;
  top: -8px;
  width: 0;
  height: 0;
  border-left: 4px solid transparent;
  border-right: 4px solid transparent;
  border-top: 3px solid #fff
}

.chatbox .line {
  margin: 40px 0
}

.chatbox .line p {
  margin: 10px 0
}

.chatbox .question a {
  display: inline-block;
  background-color: rgba(255, 255, 255, .3);
  border-radius: 10px 10px 10px 0;
  font-size: 12px;
  padding: 0 10px;
  margin-right: 10px;
  cursor: pointer;
  opacity: .8;
  transform: translateY(0);
  transition: .2s all
}

.chatbox .question a:hover {
  opacity: 1;
  transform: translateY(-2px);
  -webkit-animation: index-link-active 1s cubic-bezier(.315, .605, .375, .925) forwards
}

.chatbox .question.disable a {
  opacity: .3
}

.chatbox .question.disable a.selected {
  opacity: .9
}

.chatbox .question a.error {
  opacity: .3;
  animation: error .2s ease-in-out
}

.chatbox .loading span {
  display: inline-block;
  height: 10px;
  width: 10px;
  border-radius: 100%;
  background-color: #fff;
  margin-right: 5px;
  animation: loading-point 1.4s infinite ease-in-out both
}

.chatbox .loading span:nth-child(1) {
  animation-delay: .2s
}

.chatbox .loading span:nth-child(2) {
  animation-delay: .4s
}

.chatbox .loading span:nth-child(3) {
  animation-delay: .6s
}
</style>
