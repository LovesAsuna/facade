<script lang="ts">
    let msg: string[] = [
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

    function random(min: number, max: number) {
        let e = max - min, n = Math.random();
        return min + Math.round(n * e)
    }

    function init(node: HTMLHeadingElement) {
        let a = random(0, msg.length - 1);
        node.setHTMLUnsafe(msg[a])
    }
</script>

<div class="ch intro">
    <div class="container">
        <div class="hello">
            <h1 id="slogan" use:init>Not Init</h1>
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

    .ch h2.chtitle span {
        color: #fff
    }

    .container {
        position: relative;
        width: 1000px;
        margin: 0 auto;
        height: 100%;
        padding: 20px 0
    }

    @keyframes bg {
        0% {
            transform: rotate(0);
            border-radius: 0
        }
        50% {
            transform: rotate(180deg);
            border-radius: 0
        }
        100% {
            transform: rotate(360deg);
            border-radius: 0
        }
    }

    @-webkit-keyframes bg {
        0% {
            transform: rotate(0);
            border-radius: 0
        }
        50% {
            transform: rotate(180deg);
            border-radius: 0
        }
        100% {
            transform: rotate(360deg);
            border-radius: 0
        }
    }

    @-ms-keyframes bg {
        0% {
            transform: rotate(0);
            border-radius: 0
        }
        50% {
            transform: rotate(180deg);
            border-radius: 0
        }
        100% {
            transform: rotate(360deg);
            border-radius: 0
        }
    }

    @-moz-keyframes bg {
        0% {
            transform: rotate(0);
            border-radius: 0
        }
        50% {
            transform: rotate(180deg);
            border-radius: 0
        }
        100% {
            transform: rotate(360deg);
            border-radius: 0
        }
    }

    @keyframes fadedown {
        0% {
            opacity: 0;
            transform: translateY(-50px)
        }
        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }

    @-webkit-keyframes fadedown {
        0% {
            opacity: 0;
            transform: translateY(-50px)
        }
        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }

    @-ms-keyframes fadedown {
        0% {
            opacity: 0;
            transform: translateY(-50px)
        }
        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }

    @-moz-keyframes fadedown {
        0% {
            opacity: 0;
            transform: translateY(-50px)
        }
        100% {
            opacity: 1;
            transform: translateY(0)
        }
    }

    .container {
        position: relative;
        width: 1000px;
        margin: 0 auto;
        height: 100%;
        padding: 20px 0
    }

    .intro {
        color: #fff;
        height: 100vh;
        padding: 0
    }

    .intro .container {
        animation: fadedown 3.5s cubic-bezier(.19, 1, .22, 1);
        -webkit-animation: fadedown 3.5s cubic-bezier(.19, 1, .22, 1);
        -ms-animation: fadedown 3.5s cubic-bezier(.19, 1, .22, 1);
        -moz-animation: fadedown 3.5s cubic-bezier(.19, 1, .22, 1)
    }

    .hello {
        position: absolute;
        bottom: 20%;
        left: 0
    }

    .hello h1, .hello h2 {
        font-weight: 400;
        font-size: 22px;
        line-height: 1.5em;
        letter-spacing: .2em
    }

    .hello h1 {
        font-size: 42px;
        letter-spacing: .5em
    }

    .hello h2 {
        padding-top: .6em
    }

    .hello .circle {
        float: left;
        margin-right: 10px;
        letter-spacing: 0
    }

    .hello .circle span {
        display: inline-block;
        width: 13px;
        height: 13px;
        background-color: #fff;
        border-radius: 100%;
        margin-right: 5px
    }

    .hello .circle span:nth-child(1) {
        background-color: #ff493f
    }

    .hello .circle span:nth-child(2) {
        background-color: #f7c900
    }

    .hello .circle span:nth-child(3) {
        background-color: #00ff37
    }

    @keyframes progressin {
        from {
            width: 0
        }
    }

    @-webkit-keyframes progressin {
        from {
            width: 0
        }
    }

    @-ms-keyframes progressin {
        from {
            width: 0
        }
    }

    @-moz-keyframes progressin {
        from {
            width: 0
        }
    }


    @keyframes loading-point {
        0% {
            opacity: .8
        }
        50% {
            opacity: .25
        }
        100% {
            opacity: 8
        }
    }

    @keyframes error {
        0% {
            transform: translateX(0)
        }
        25% {
            transform: translateX(-2px)
        }
        50% {
            transform: translateX(0)
        }
        75% {
            transform: translateX(2px)
        }
        100% {
            transform: translateX(0)
        }
    }

    @keyframes index-link-active {
        0% {
            transform: perspective(1600px) rotateX(0) rotateY(0) translateZ(0)
        }
        16% {
            transform: perspective(1600px) rotateX(10deg) rotateY(5deg) translateZ(32px)
        }
        100% {
            transform: perspective(1600px) rotateX(0) rotateY(0) translateZ(65px)
        }
    }

    @media screen and (min-width: 1400px) {
        .container {
            width: 70%
        }
    }

    @media screen and (max-width: 700px) {
        .container {
            width: auto;
            margin: 0 5%
        }

        .ch {
            padding: 40px 0
        }

        .hello {
            width: 90%;
            padding: 5%;
            text-align: center;
            bottom: 50%
        }

        .hello .circle {
            float: none;
            margin-right: 0
        }

        .hello h2 {
            padding-top: 0
        }

        .hello h1, .hello h2 {
            font-weight: 400;
            font-size: 14px
        }

        .hello .circle {
            padding: 20px
        }

        .hello .circle span {
            margin: 0 5px;
            width: 10px;
            height: 10px
        }

        .hello h1 {
            font-size: 26px
        }
    }
</style>
