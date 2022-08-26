<style lang="postcss">
    

    social {
        position: relative;
    }
    .social:after {
        content: "";
        position: absolute;
        left: 0;
        width: 0;
        height: 100%;
        transition-property: width;
        transition-duration: 0.25s;
        transition-timing-function: ease-out;
        background-color: red;
        z-index: -1;
    }
    .social .social-name,
    .social .social-username {
        transition-property: opacity;
        transition-duration: 0.2s;
        transition-timing-function: ease-out;
        transition-delay: 0.06s;
    }
    .social i {
        transition-property: transform;
        transition-duration: 0.2s;
        transition-timing-function: ease-in-out;
    }
    .social .social-name {
        transform: translateY(50%);
    }
    .social .social-username {
        transform: translateY(-50%);
        opacity: 0;
    }
    .social:hover:after {
        width: 100%;
    }
    .social:hover .social-name {
        opacity: 0;
    }
    .social:hover .social-username {
        opacity: 1;
    }
    .social:hover i {
        transform: rotate(-45deg);
    }
</style>

<div class="my-24 px-4 lg:px-0">
    <div class="container mx-auto mb-8"><h2 class="font-display font-bold text-6xl lg:text-8xl">Socials</h2></div>
    <div class="container mx-auto">
        <div class="flex flex-wrap justify-between lg:justify-start -mx-4">
            <a
                href="https://github.com/zaanposni"
                target="_blank"
                rel="noopener"
                class="flex items-center h-12 text-2xl m-4 px-4 leading-loose social"
                ><i class="material-icons mr-2 md hydrated" role="img" aria-label="arrow forward sharp">arrow_forward</i>
                <div>
                    <div class="social-name">GitHub</div>
                    <div class="social-username">@zaanposni</div>
                </div></a
            ><a href="mailto:me@zaanposni.com" target="_blank" rel="noopener" class="flex items-center h-12 text-2xl m-4 px-4 leading-loose social"
                ><i class="material-icons mr-2 md hydrated" role="img" aria-label="arrow forward sharp">arrow_forward</i>
                <div>
                    <div class="social-name">E-Mail</div>
                    <div class="social-username">me@zaanposni.com</div>
                </div></a>
        </div>
    </div>
</div>