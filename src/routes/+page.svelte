<script lang="ts">
    import Background from './background.svelte'
    import Navigation from './navigation.svelte'
    import Main from './main.svelte'
</script>

<div id="app">
    <Navigation />
    <Background />
    <Main />
</div>

<style>
    :global(*) {
        padding: 0;
        margin: 0;
        transition-timing-function: cubic-bezier(.19, 1, .22, 1)
    }

    :global(body, html) {
        background-color: #212121;
    }

    :global(body, html) {
        font-family: "Microsoft YaHei",serif;
        -webkit-font-smoothing: antialiased;
        color: #fff;
        line-height: 1.5;
        font-size: 14px;
        overflow-x: hidden
    }
</style>