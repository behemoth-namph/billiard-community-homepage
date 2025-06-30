<template>
  <section class="w-full py-20 overflow-hidden relative">
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
          <button
            class="inline-flex items-center justify-center rounded-full text-base font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 border border-input bg-background hover:bg-accent hover:text-accent-foreground h-12 px-8 hover-lift"
          >
            {{ t("hero.bookDemo") }}
          </button>
        </div>

        <!-- Animated features list -->
        <div
          class="flex items-center justify-center gap-4 mt-6 text-sm text-muted-foreground animate-fade-in-up animate-delay-400"
        >
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-500"
            />
            <span>{{ t("hero.noCard") }}</span>
          </div>
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-600"
            />
            <span>{{ t("hero.trial") }}</span>
          </div>
          <div class="flex items-center gap-1 hover-lift">
            <CheckIcon
              class="size-4 text-primary animate-scale-in animate-delay-700"
            />
            <span>{{ t("hero.cancel") }}</span>
          </div>
        </div>
      </div>

      <!-- Animated dashboard image -->
      <div
        class="relative mx-auto max-w-5xl animate-fade-in-up animate-delay-500"
      >
        <div
          class="rounded-xl overflow-hidden shadow-2xl border border-border/40 bg-gradient-to-b from-background to-muted/20 hover-lift transition-all duration-500"
        >
          <img
            src="https://vibico.co/assets/img/features-1.webp"
            width="1024"
            height="576"
            alt="Tournament creation"
            class="w-full h-auto transition-transform duration-500 hover:scale-105"
          />
          <div
            class="absolute inset-0 rounded-xl ring-1 ring-inset ring-black/10 dark:ring-white/10"
          ></div>
        </div>

        <!-- Enhanced floating orbs -->
        <div
          class="absolute -bottom-6 -right-6 -z-10 h-[300px] w-[300px] rounded-full bg-gradient-to-br from-primary/30 to-secondary/30 blur-3xl opacity-70 animate-float animate-delay-200"
        ></div>
        <div
          class="absolute -top-6 -left-6 -z-10 h-[300px] w-[300px] rounded-full bg-gradient-to-br from-secondary/30 to-primary/30 blur-3xl opacity-70 animate-float animate-delay-400"
        ></div>

        <!-- Additional animated elements -->
        <div
          class="absolute top-10 right-10 w-4 h-4 bg-primary/40 rounded-full animate-pulse animate-delay-300"
        ></div>
        <div
          class="absolute bottom-10 left-10 w-3 h-3 bg-secondary/50 rounded-full animate-pulse animate-delay-500"
        ></div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { CheckIcon, ArrowRightIcon } from "lucide-vue-next";

defineProps({
  t: {
    type: Function,
    required: true,
  },
});
</script>
