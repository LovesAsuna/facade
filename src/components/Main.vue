<template>
  <div class="main">
    <intro></intro>
    <about></about>
    <find></find>
    <gate></gate>
    <foot_er></foot_er>
  </div>
</template>

<script>
import intro from './Intro.vue'
import about from './About.vue'
import find from './Find.vue'
import gate from './Gate.vue'
import foot_er from './Footer.vue'

export default {
  name: "Main",
  components: {
    intro,
    about,
    gate,
    find,
    foot_er
  }
}
</script>
