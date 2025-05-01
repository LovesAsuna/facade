<nav>
    <a href="https://hyosakura.com/" class="active">Index</a>
    <span class="clip"></span>
    <a href="https://blog.hyosakura.com/">Blog</a>
    <a href="https://gate.hyosakura.com/">Gate</a>
    <a href=".">Lab</a>
    <span class="clip"></span>
    <a href=".">LovesAsuna</a>
</nav>

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

    nav span.clip {
        height: 3px;
        width: 3px;
        opacity: .4;
        background: #fff;
        margin-left: 10px;
        margin-right: 10px;
        display: inline-block;
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

    nav a.active, nav a:hover {
        text-decoration: underline;
        opacity: 1
    }

    @media screen and (min-width: 1400px) {
        nav a {
            font-size: 18px
        }
    }

    @media screen and (max-width: 700px) {
        nav {
            padding: 15px 5%;
            overflow: auto;
            font-size: 13px;
            left: 0;
            top: inherit;
            bottom: 0;
            transform: rotate(0) translate3d(0, 0, 0);
            transform-origin: 0 100%;
            white-space: nowrap;
            width: 90%;
            background: -webkit-linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, .8));
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, .8))
        }
    }
</style>
