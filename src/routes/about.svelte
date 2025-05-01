<script>
    import ChatBox from './chatbox.svelte'

    let skills = [
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
</script>

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
                    ，{new Date().getFullYear() - 2001}岁，是打工人，对有趣的世界和可能有趣的你感到好奇，热爱It和ACG文化，正在尝试努力学习中。
                </p>
                <p>希望能与你在比特之海的繁星之下相见！</p>
                <ChatBox />
            </div>
            <ul class="skill clear">
                {#each skills as skill (skill.name)}
                    <li>
                        <p>{ skill.name }</p>
                        <div class="progress">
                            <div style={"width:" + skill.progress + "%"}></div>
                            <span>{@html skill.desc}</span>
                        </div>
                    </li>
                {/each}
            </ul>
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

    .about .introduct {
        line-height: 2em
    }

    .about .introduct img.avatar {
        float: right;
        width: 140px;
        margin-left: 40px;
        margin-right: 20px;
        border-radius: 100%
    }

    .about ul.skill {
        margin-top: 50px
    }

    .about ul.skill li {
        list-style: none;
        padding: 10px 0;
        width: 45%;
        float: left;
        margin-right: 5%
    }

    .about ul.skill li p {
        display: inline-block;
        width: 26%;
        margin-right: 3%;
        font-size: 12px
    }

    .about ul.skill li .progress {
        display: inline-block;
        width: 70%;
        height: 3px;
        background-color: rgba(255, 255, 255, .2);
        vertical-align: middle
    }

    .about ul.skill li .progress span {
        font-size: 12px;
        color: rgba(255, 255, 255, .4);
        opacity: 0;
        position: relative;
        top: -5px;
        letter-spacing: .5em;
        transition: .3s all
    }

    .about ul.skill li:hover .progress span {
        opacity: 1;
        top: 0
    }

    .about ul.skill li .progress div {
        background-color: #fff;
        height: 3px;
        position: relative
    }

    ul.skill li .progress div {
        animation: progressin 7s;
        -webkit-animation: progressin 7s;
        -ms-animation: progressin 7s;
        -moz-animation: progressin 7s
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

        .about .introduct img.avatar {
            float: none;
            margin-left: 0;
            margin-right: 0;
            width: 100px
        }

        .about .introduct, .about .skill {
            float: none;
            width: auto
        }

        .about .skill {
            padding-top: 40px
        }

        .about ul.skill li {
            width: 100%
        }
    }
</style>
