<script lang="ts">
    // Canvas variables
    let cw: number, ch: number, cf: HTMLCanvasElement, ctx: CanvasRenderingContext2D,
        cftx: CanvasRenderingContext2D, centerX: number, centerY: number,
        stars: Array<{x: number, y: number, size: number, color: string}>,
        drawTimes: number, c: HTMLCanvasElement, longside: number;

    // Helper functions
    function rand(min: number, max: number): number {
        const range = max - min;
        const random = Math.random();
        return min + Math.round(random * range);
    }

    function createStar() {
        stars.push({
            x: rand(-cf.width, cf.width),
            y: rand(-cf.height, cf.height),
            size: 1,
            color: randomColor()
        });
    }

    function randomColor(): string {
        return `rgba(${rand(120, 255)},${rand(120, 255)},${rand(120, 255)},${rand(30, 100) / 100})`;
    }

    function drawStar() {
        for (let t = stars.length; t--;) {
            const star = stars[t];
            cftx.beginPath();
            cftx.arc(star.x, star.y, star.size, 0, 2 * Math.PI, true);
            cftx.fillStyle = star.color;
            cftx.closePath();
            cftx.fill();
        }
    }

    function drawFromCache() {
        ctx.drawImage(cf, -cf.width / 2, -cf.height / 2);
    }

    function loop() {
        drawFromCache();

        // Occasionally add a semi-transparent black rectangle to create a fading effect
        if (++drawTimes > 150 && drawTimes % 8 === 0) {
            ctx.fillStyle = "rgba(0,0,0,.04)";
            ctx.fillRect(-3 * longside, -3 * longside, 6 * longside, 6 * longside);
        }

        rotateCanvas(0.025);
    }

    function rotateCanvas(angle: number) {
        ctx.rotate(angle * Math.PI / 180);
    }

    function fireAnimate() {
        requestAnimationFrame(fireAnimate);
        loop();
    }

    // Setup and initialization
    function setupCanvas(node: HTMLElement) {
        // Define requestAnimationFrame for older browsers
        window.requestAnimationFrame = window.requestAnimationFrame ||
            function(callback: FrameRequestCallback) {
                window.setTimeout(callback, 1000 / 60);
                return 0;
            };

        // Handle window resize
        window.onresize = function() {
            c.width = cw = c.offsetWidth;
            c.height = ch = c.offsetHeight;
            ctx.fillStyle = "rgba(21,21,21,1)";
            ctx.fillRect(0, 0, cw, ch);
        };

        // Initialize canvas elements
        cf = document.createElement("canvas");
        c = node as HTMLCanvasElement;

        if (!c) {
            console.error("Canvas element with id {node.id} not found");
            return;
        }

        c.width = cf.width = cw = c.offsetWidth;
        c.height = cf.height = ch = c.offsetHeight;
        longside = Math.max(cw, ch);
        cf.width = 2.6 * longside;
        cf.height = 2.6 * longside;

        // Get canvas contexts
        ctx = c.getContext("2d") as CanvasRenderingContext2D;
        cftx = cf.getContext("2d") as CanvasRenderingContext2D;

        // Initialize variables
        centerX = cw;
        centerY = 0;
        stars = [];
        drawTimes = 0;

        // Set initial canvas state
        ctx.fillStyle = "rgba(21,21,21,1)";
        ctx.fillRect(0, 0, cw, ch);
        ctx.lineCap = "round";

        // Create stars
        for (let count = 20000; count--;) createStar();
        drawStar();

        // Set translation and start animation
        ctx.translate(centerX, centerY);
        fireAnimate();
    }

    let fixed = $state(false);
    // Add scroll event listener using native JavaScript
    function onscroll() {
        const scrollTop = window.scrollY || document.documentElement.scrollTop;
        const windowHeight = window.innerHeight;

        // Add or remove 'fixed' class based on scroll position
        const backgroundElement = document.querySelector('.background');
        if (backgroundElement) {
            fixed = scrollTop > 0.6 * windowHeight;
        }
    }
</script>

<svelte:window {onscroll} />
<div class={["background", { fixed }]}>
    <canvas id="star-track" use:setupCanvas></canvas>
    <div class="cover"></div>
</div>

<style>
    #star-track {
        height: 140%;
        width: 100%
    }

    .background {
        position: absolute;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh
    }

    .background canvas {
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
    }

    .background .cover {
        position: absolute;
        bottom: -42%;
        left: 0;
        height: 100%;
        width: 100%;
        background: linear-gradient(to top, rgba(32, 32, 32, 1) 30%, rgba(32, 32, 32, 0) 100%)
    }

    /* Add fixed class styles for scroll effect */
    .background.fixed {
        position: fixed;
        top: -60%
    }
</style>
