<template>
  <div class="find ch">
    <div class="container links">
      <h2 class="chtitle">
        LovesAsuna生活的
        <span>地方</span>
      </h2>
      <div class="clear col-3">
        <a :href="top.link" v-for="top in top3" :key="top.name" target="_blank">
          <div class="item">
            <div class="bg" style="background-color: #28A9E0"></div>
            <div class="inner">
              <span>{{ top.name }}</span>
            </div>
          </div>
        </a>
      </div>
      <div class="clear">
        <a :href="relation.link" v-for="relation in relations" :key="relation.name" target="_blank">
          <div class="item">
            <div class="bg" :style="'background-color:' + relation.background_color"></div>
            <div class="inner">
              <i :class="'iconfont ' + relation.icon"></i>
              <span>{{ relation.name }}</span>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Find",
  data: function () {
    return {
      top3: [
        {
          link: "https://blog.hyosakura.com/",
          name: "博客"
        },
        {
          link: "#",
          name: "实验室"
        },
        {
          link: "#",
          name: "任意门"
        }
      ],
      relations: [
        {
          link: "http://wpa.qq.com/msgrd?v=3&uin=625924077&site=qq&menu=yes",
          background_color: "#28A9E0",
          icon: "icon-qq",
          name: "QQ"
        },
        {
          link: "mailto:qq625924077@gmail.com",
          background_color: "#28A9E0",
          icon: "icon-mail",
          name: "Mail"
        },
        {
          link: "https://www.weibo.com/5902883537",
          background_color: "#E6162D",
          icon: "icon-weibo",
          name: "Weibo"
        },
        {
          link: "https://space.bilibili.com/26489139",
          background_color: "#F9A2A8",
          icon: "icon-bilibili",
          name: "Bilibili"
        },
        {
          link: "https://twitter.com/LovesAsuna",
          background_color: "#28A9E0",
          icon: "icon-twitter",
          name: "Twitter"
        },
        {
          link: "https://www.zhihu.com/people/fu-sheng-ruo-meng-63-31-19",
          background_color: "#0F88EB",
          icon: "icon-zhihu",
          name: "知乎"
        },
        {
          link: "https://bangumi.tv/user/534020",
          background_color: "#F09199",
          icon: "icon-bangumi-icon",
          name: "Bangumi"
        },
        {
          link: "https://music.163.com/#/user/home?id=539493339",
          background_color: "#F12D35",
          icon: "icon-netease",
          name: "网易云音乐"
        },
        {
          link: "https://github.com/LovesAsuna",
          background_color: "#353535",
          icon: "icon-github2",
          name: "Github"
        },
        {
          link: "https://steamcommunity.com/id/LovesAsuna/",
          background_color: "#b600ff",
          icon: "icon-steam",
          name: "Steam"
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

.links a {
  color: #fff;
  text-decoration: none
}

.find .links .item {
  position: relative;
  width: 17.6%;
  height: 80px;
  line-height: 80px;
  margin: 10px 1.2%;
  padding: 5px 0;
  text-align: center;
  float: left;
  transition: .2s all;
  opacity: .9
}

.find .links .item:hover {
  opacity: 1;
  transform: translateY(-10px);
  -webkit-animation: index-link-active 1s cubic-bezier(.315, .605, .375, .925) forwards
}

.find .links .item .inner {
  position: relative;
  z-index: 5
}

.find .links .item .bg {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 1.8%;
  z-index: 0;
  transition: .15s all
}

.find .links .item:hover .bg {
  height: 100%;
  width: 100%;
  border-radius: 5px;
  box-shadow: 0 3px 20px rgba(0, 0, 0, .28)
}

.find .links .item i {
  font-size: 20px
}

.find .links .item span {
  display: inline-block;
  width: 100px
}

.find .links .col-3 .item {
  width: 30.93%;
  margin: 10px 1.2%
}
</style>
