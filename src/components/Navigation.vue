<template>
  <nav>
    <a href="https://hyosakura.com/" class="active">Index</a>
    <a class="clip"></a>
    <a href="https://blog.hyosakura.com/">Blog</a>
    <a href="https://gate.hyosakura.com/">Gate</a>
    <a href="#">Lab</a>
    <a class="clip"></a>
    <a href="#">LovesAsuna</a>
  </nav>
</template>

<script>
export default {
  name: "Navigation"
}
</script>

<style>
nav {
  position: fixed;
  left: 20px;
  bottom: 0;
  z-index: 2333;
  transform: rotate(-90deg) translate3d(0, 0, 0);
  transform-origin: 0 0;
  transition: .3s all ease-out;
  vertical-align: middle;
  font-family: Roboto, Tahoma, Consolas, "Microsoft YaHei"
}

nav a.clip {
  height: 3px;
  width: 3px;
  background: #fff;
  border-radius: 100%
}

nav a {
  display: inline-block;
  font-size: 13px;
  color: #fff;
  text-decoration: none;
  margin: 0 10px;
  opacity: .4;
  transition: .3s all;
  vertical-align: middle
}

nav a.time {
  opacity: 1
}

nav a.active, nav a:hover {
  text-decoration: underline;
  opacity: 1
}
</style>
