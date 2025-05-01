<script lang="ts">
    let { messages = [] } = $props();

    let promise = $state(new Promise<Array<string>>(
        (resolve) => {
            setTimeout(() => {
                resolve(messages);
            }, 1000);
        }
    ));
</script>

<div class="chatbox">
    {#await promise}
        <div class="line loading" style="display: block">
            <span></span>
            <span></span>
            <span></span>
        </div>
    {:then messages}
        <div class="line question" style="display: block">
            {#each messages as message}
                <a>{message}</a>
            {/each}
        </div>
    {/await}
</div>

<style>
    .chatbox > .line {
        display: none;
    }

    .chatbox .line {
        margin: 40px 0;
    }

    .chatbox .line p {
        margin: 10px 0;
    }

    .chatbox .question a {
        display: inline-block;
        background-color: rgba(255, 255, 255, 0.3);
        border-radius: 10px 10px 10px 0;
        font-size: 12px;
        padding: 0 10px;
        margin-right: 10px;
        cursor: pointer;
        opacity: 0.8;
        transform: translateY(0);
        transition: 0.2s all;
    }

    .chatbox .question a:hover {
        opacity: 1;
        transform: translateY(-2px);
        animation: index-link-active 1s cubic-bezier(0.315, 0.605, 0.375, 0.925) forwards;
    }

    .chatbox .question.disable a {
        opacity: 0.3;
    }

    .chatbox .question.disable a.selected {
        opacity: 0.9;
    }

    .chatbox .question a.error {
        opacity: 0.3;
        animation: error 0.2s ease-in-out;
    }



    .chatbox .loading span {
        display: inline-block;
        height: 10px;
        width: 10px;
        border-radius: 100%;
        background-color: #fff;
        margin-right: 5px;
        animation: loading-point 1.4s infinite ease-in-out both;
    }

    .chatbox .loading span:nth-child(1) {
        animation-delay: 0.2s;
    }

    .chatbox .loading span:nth-child(2) {
        animation-delay: 0.4s;
    }

    .chatbox .loading span:nth-child(3) {
        animation-delay: 0.6s;
    }

    @keyframes loading-point {
        0%, 80%, 100% {
            transform: scale(0);
        }
        40% {
            transform: scale(1);
        }
    }

    @keyframes error {
        0%, 100% {
            transform: translateX(0);
        }
        20%, 60% {
            transform: translateX(-5px);
        }
        40%, 80% {
            transform: translateX(5px);
        }
    }

    @keyframes index-link-active {
        0% {
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 1px rgba(0, 0, 0, 0);
        }
        100% {
            transform: perspective(1px) translateZ(0);
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
        }
    }
</style>
