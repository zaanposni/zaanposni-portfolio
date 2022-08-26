<script lang="ts">
    let y;

    let currentYear = 2022;
    try {
        currentYear = new Date().getFullYear();
    } catch (e) {
        console.error(e);
    }

    let scrolled = false;
    $: scrolled = !scrolled && y > 500 ? true : scrolled;
</script>

<style lang="postcss">
    .h-90vh {
        height: 90vh;
    }
    .h-10vh {
        height: 10vh;
    }

    .absolute-cover {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>

<svelte:window bind:scrollY={y} />

<div class="relative h-90vh">
    <div class="absolute-cover flex flex-col justify-between">
        <div class="flex justify-between font-sans font-medium text-xl">
            <div class="p-8 uppercase tracking-widest">Portfolio</div>
            <div class="p-8 uppercase tracking-widest whitespace-no-wrap flex tracking-tighter">{currentYear}</div>
        </div>
        <div class="flex justify-center">
            <div class="my-8 px-9 w-full lg:w-3/4 xl:w-2/3 font-display text-white">
                <div class="mb-8 lg:mb-0 font-extrabold text-7xl md:text-9xl xxl:text-12xl">
                    <h1 class="animate__animated animate__fadeInDown">Yannick Gross</h1>
                </div>
                <div class="mb-6 lg:mb-0 font-bold text-3xl md:text-4xl xxl:text-5xl">
                    <h3 class="animate__animated animate__fadeInUp animate__delay-800">Full Stack Developer</h3>
                </div>
                <div class="font-bold text-3xl md:text-4xl xxl:text-5xl"><h3 class="animate__animated animate__fadeInUp">
                    Student for Computer Science
                </h3></div>
            </div>
        </div>
    </div>
    <div class="flex h-90vh">
        <div class="w-1/2 bg-pattern-dots" />
        <div class="w-1/2 bg-blue-600 bg-pattern-circuit" />
    </div>
    <div class="flex items-center h-10vh">
        <div class="container mx-auto px-8 lg:px-0">
            <div class="flex items-center">
                <!---->
                {#if scrolled}
                <div class="flex flex-row items-center animate__animated animate__fadeInUp text-green-500">
                    <span name="thumbs-up-sharp" class="material-icons mr-2 md hydrated" role="img" aria-label="thumbs up sharp">thumb_up</span>
                    <span>Nice</span>
                </div>
                {:else}
                <div class="flex flex-row items-center">
                    <span name="arrow-down-sharp" class="material-icons mr-2 md hydrated" role="img" aria-label="arrow down sharp">keyboard_arrow_down</span>
                    <span>Keep scrolling...</span>
                </div>
                {/if}
            </div>
        </div>
    </div>
</div>
