<script lang="ts">
    import "./App.css";
    import Welcome from "./lib/Welcome.svelte";
    import Socials from "./lib/Socials.svelte";
    import Work from "./lib/Work.svelte";
    import Skills from "./lib/Skills.svelte";
    import OpenSource from "./lib/OpenSource.svelte";
    import Footer from "./lib/Footer.svelte";
</script>

<style global lang="postcss">
    @tailwind base;
    @tailwind components;
    @tailwind utilities;
</style>

<main class="font-sans antialiased text-white bg-black">
    <div>
        <Welcome />
        <Socials />
        <Work />
        <Skills />
        <OpenSource />
    </div>
    <div class="mt-64">
        <Footer />
    </div>
</main>
