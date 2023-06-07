<template>
  <div class="gate ch">
    <div class="container links">
      <h2 class="chtitle">
        LovesAsuna的
        <span>邻居</span>
        们
      </h2>
      <div class="clear">
        <a :href="neighbor.link" v-for="neighbor in neighbors" :key="neighbor.name" target="_blank">
          <div class="item">
            <div class="avatar">
              <img :src="neighbor.img">
            </div>
            <div class="inner">
              <h5 v-html="neighbor.name"></h5>
              <p>{{ neighbor.desc }}</p>
            </div>
          </div>
        </a>
      </div>
      <div class="clear" style="margin-top: 30px">
        <a :href="neighbor.link" v-for="neighbor in neighbors_specious" :key="neighbor.name" target="_blank">
          <div class="item">
            <div class="avatar">
              <img :src="neighbor.img">
            </div>
            <div class="inner">
              <h5 v-html="neighbor.name"></h5>
              <p>{{ neighbor.desc }}</p>
            </div>
          </div>
        </a>

        <!--如果需要增加，请在此处继续更改html代码-->
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Gate",
  data: function () {
    return {
      neighbors: [],
      neighbors_specious: [
        {
          link: "https://blog.hyosakura.com/friend.html",
          img: "https://blog.hyosakura.com/avatar",
          name: "申请友情链接",
          desc: "点击申请加入友情链接"
        }
      ],
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

.gate .links .item {
  margin: 5px 0;
  padding: 15px 1.5%;
  float: left;
  width: 22%;
  height: 60px;
  transition: .2s all;
  opacity: .85
}

.gate .links .item.akarin {
  opacity: .58
}

.gate .links .item:hover {
  opacity: 1;
  border-radius: 5px;
  background-color: rgba(255, 255, 255, .25);
  transform: translateY(-5px);
  box-shadow: 0 3px 20px rgba(0, 0, 0, .28);
  -webkit-animation: index-link-active 1s cubic-bezier(.315, .605, .375, .925) forwards
}

.gate .links .item .avatar {
  float: left;
  height: 60px;
  line-height: 60px;
  width: 60px;
  border-radius: 100%;
  text-align: center;
  margin-right: 15px;
  background-color: #353535;
  overflow: hidden
}

.gate .links .item .avatar i {
  font-size: 24px
}

.gate .links .item .avatar img {
  height: 60px;
  max-width: 60px;
  border-radius: 100%
}

.gate .links .item .inner {
  padding: 6px
}

.gate .links .item .inner h5 {
  font-weight: 400;
  font-size: 17px
}

.gate .links .item .inner p {
  font-size: 13px;
  color: rgba(255, 255, 255, .6)
}
</style>
