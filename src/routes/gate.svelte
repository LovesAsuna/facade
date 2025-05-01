<script lang="ts">
    let neighbors: Array<{ name: string, link: string, desc: string, img: string}> = [];
    let neighbors_specious = [
        {
            link: "https://blog.hyosakura.com/friends",
            img: "https://blog.hyosakura.com/avatar",
            name: "申请友情链接",
            desc: "点击申请加入友情链接"
        }
    ];
</script>

<div class="gate ch">
    <div class="container links">
        <h2 class="chtitle">
            LovesAsuna的
            <span>邻居</span>
            们
        </h2>
        <div class="clear">
            {#each neighbors as neighbor (neighbor.name)}
                <a href={neighbor.link} target="_blank">
                    <div class="item">
                        <div class="avatar">
                            <img src={neighbor.img}>
                        </div>
                        <div class="inner">
                            <h5 >{@html neighbor.name}</h5>
                            <p>{ neighbor.desc }</p>
                        </div>
                    </div>
                </a>
            {/each}
        </div>
        <div class="clear" style="margin-top: 30px">
            {#each neighbors_specious as neighbor (neighbor.name)}
                <a href={neighbor.link}  target="_blank">
                    <div class="item">
                        <div class="avatar">
                            <img src={neighbor.img}>
                        </div>
                        <div class="inner">
                            <h5>{@html neighbor.name}</h5>
                            <p>{neighbor.desc}</p>
                        </div>
                    </div>
                </a>
            {/each}
            <!--如果需要增加，请在此处继续更改html代码-->
        </div>
    </div>
</div>

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

    .links a {
        color: #fff;
        text-decoration: none
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

        .gate .links .item {
            width: 50%;
        }

        .gate .links .item .avatar {
            height: 40px;
            line-height: 40px;
            width: 40px
        }

        .gate .links .item .avatar img {
            height: 40px;
            max-width: 40px
        }

        .gate .links .item .inner {
            padding: 0
        }

        .gate .links .item .inner h5 {
            font-size: 15px
        }

        .gate .links .item .inner h5, .gate .links .item .inner p {
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden
        }
    }
</style>
