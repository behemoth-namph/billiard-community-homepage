<template>
  <section class="hero w-full py-20 overflow-hidden relative">
    <div class="container px-4 md:px-6 relative">
      <!-- Animated background -->
      <div
        class="absolute inset-0 -z-10 h-full w-full bg-white dark:bg-black bg-[linear-gradient(to_right,#f0f0f0_1px,transparent_1px),linear-gradient(to_bottom,#f0f0f0_1px,transparent_1px)] dark:bg-[linear-gradient(to_right,#1f1f1f_1px,transparent_1px),linear-gradient(to_bottom,#1f1f1f_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_60%_50%_at_50%_0%,#000_70%,transparent_110%)] animate-pulse"
      ></div>

      <!-- Floating particles -->
      <div class="absolute inset-0 -z-10">
        <div
          class="absolute top-20 left-10 w-2 h-2 bg-primary/30 rounded-full animate-float"
        ></div>
        <div
          class="absolute top-40 right-20 w-3 h-3 bg-secondary/40 rounded-full animate-float animate-delay-200"
        ></div>
        <div
          class="absolute bottom-40 left-20 w-1.5 h-1.5 bg-primary/20 rounded-full animate-float animate-delay-400"
        ></div>
        <div
          class="absolute bottom-20 right-10 w-2.5 h-2.5 bg-secondary/30 rounded-full animate-float animate-delay-600"
        ></div>
      </div>

      <div class="text-center max-w-3xl mx-auto mb-12">
        <!-- Animated title -->
        <h1
          class="text-4xl md:text-5xl lg:text-6xl font-bold tracking-tight mb-6 animate-fade-in-up animate-delay-100"
        >
          <span
            class="bg-gradient-to-r from-foreground via-primary to-foreground bg-clip-text text-transparent animate-gradient"
          >
            {{ t("hero.title") }}
          </span>
        </h1>

        <!-- Animated description -->
        <p
          class="text-lg md:text-xl text-muted-foreground mb-8 max-w-2xl mx-auto animate-fade-in-up animate-delay-200"
        >
          {{ t("hero.subtitle") }}
        </p>

        <!-- Animated buttons -->
        <div
          class="flex flex-col sm:flex-row gap-4 justify-center animate-fade-in-up animate-delay-300"
        >
          <a
            href="#contact"
            class="inline-flex items-center justify-center rounded-full text-base font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-12 px-8 hover-lift"
          >
            {{ t("hero.bookDemo") }}
          </a>
        </div>

        <!-- Animated features list -->
        <div
          class="flex items-center justify-center gap-4 mt-6 text-sm text-muted-foreground animate-fade-in-up animate-delay-400"
        >
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-500"
            />
            <span>{{ t("hero.professional") }}</span>
          </div>
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-600"
            />
            <span>{{ t("hero.friendly") }}</span>
          </div>
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-700"
            />
            <span>{{ t("hero.diverse") }}</span>
          </div>
        </div>
      </div>

      <!-- Animated dashboard image -->
      <BaseSlider
        :items="heroSections"
        :breakpoints="{ 640: { slidesPerView: 1 } }"
        effect="coverflow"
        :coverflow-effect="{
          rotate: 30,
          stretch: 0,
          depth: 200,
          modifier: 2,
          slideShadows: false,
        }"
      >
        <template #default="{ item }">
          <div class="relative mx-auto max-w-5xl group">
            <!-- Image Wrapper -->
            <div
              class="relative overflow-hidden rounded-xl border border-border/40 bg-gradient-to-b from-background to-muted/20 transition-all duration-500"
            >
              <img
                :src="item.image"
                alt="Tournament"
                width="1024"
                height="576"
                class="w-full h-auto group-hover:brightness-75 transition duration-500"
              />

              <!-- Overlay Button -->
              <a
                :href="item.link"
                target="_blank"
                class="absolute inset-0 z-10 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity duration-300"
              >
                <span
                  class="bg-primary text-white font-semibold px-6 py-3 rounded-full shadow-lg hover:bg-primary/90 transition"
                >
                  {{ t("hero.learnMore") }}
                </span>
              </a>

              <!-- Decorative ring -->
              <div
                class="absolute inset-0 rounded-xl ring-1 ring-inset ring-black/10 dark:ring-white/10"
              ></div>
            </div>

            <!-- Floating Elements -->
            <div
              class="absolute -bottom-6 -right-6 -z-10 h-[300px] w-[300px] rounded-full bg-gradient-to-br from-primary/30 to-secondary/30 blur-3xl opacity-70 animate-float animate-delay-200"
            ></div>
            <div
              class="absolute -top-6 -left-6 -z-10 h-[300px] w-[300px] rounded-full bg-gradient-to-br from-secondary/30 to-primary/30 blur-3xl opacity-70 animate-float animate-delay-400"
            ></div>
            <div
              class="absolute top-10 right-10 w-4 h-4 bg-primary/40 rounded-full animate-pulse animate-delay-300"
            ></div>
            <div
              class="absolute bottom-10 left-10 w-3 h-3 bg-secondary/50 rounded-full animate-pulse animate-delay-500"
            ></div>
          </div>
        </template>
      </BaseSlider>
    </div>
  </section>
</template>

<script setup>
import { computed } from "vue";
import { CheckIcon } from "lucide-vue-next";

import BaseSlider from "./BaseSlider.vue";

defineProps({
  t: {
    type: Function,
    required: true,
  },
});

const heroSections = computed(() => [
  {
    image: "/hero/vibico-tournament.webp",
    link: "https://tournaments.vibico.co/tournaments",
  },
  {
    image: "/hero/vibico-education.webp",
    link: "https://academy.vibico.co/",
  },
]);
</script>

<style>
@media (max-width: 576px) {
  .hero .swiper {
    overflow: visible;
  }
}
</style>
