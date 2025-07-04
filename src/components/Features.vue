<template>
  <section id="features" class="w-full py-20 md:py-32">
    <div class="container px-4 md:px-6">
      <AnimatedSection
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground hover-lift"
        >
          {{ t("features.badge") }}
        </div>
        <h2
          class="text-3xl md:text-4xl font-bold tracking-tight bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent"
        >
          {{ t("features.title") }}
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          {{ t("features.subtitle") }}
        </p>
      </AnimatedSection>

      <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-2 place-items-center">
        <AnimatedSection
          v-for="(feature, i) in features"
          :key="i"
          :delay="i * 100"
          class="group"
        >
          <div
            class="h-full overflow-hidden border border-border/40 bg-gradient-to-b from-background to-muted/10 backdrop-blur transition-all duration-500 hover:shadow-xl hover:border-primary/20 rounded-lg hover-lift group-hover:bg-gradient-to-b group-hover:from-primary/5 group-hover:to-secondary/5"
          >
            <div class="p-6 flex flex-col h-full">
              <div
                class="size-10 rounded-full bg-primary/10 dark:bg-primary/20 flex items-center justify-center text-primary mb-4 transition-all duration-300 group-hover:bg-primary/20 group-hover:scale-110 hover-glow"
              >
                <component
                  :is="feature.icon"
                  class="size-5 transition-transform duration-300 group-hover:rotate-12"
                />
              </div>
              <h3
                class="text-xl font-bold mb-2 transition-colors duration-300 group-hover:text-primary"
              >
                {{ feature.title }}
              </h3>
              <p
                class="text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80"
              >
                {{ feature.description }}
              </p>
            </div>
          </div>
        </AnimatedSection>
      </div>
    </div>
  </section>
</template>

<script setup>
import { computed } from "vue";
import {
  ZapIcon,
  MonitorPlay,
  BookOpenCheckIcon,
  StarIcon,
} from "lucide-vue-next";
import AnimatedSection from "./AnimatedSection.vue";

const props = defineProps({
  t: {
    type: Function,
    required: true,
  },
});

const features = computed(() => [
  {
    title: props.t("features.servise1.title"),
    description: props.t("features.servise1.desc"),
    icon: MonitorPlay,
  },
  {
    title: props.t("features.servise2.title"),
    description:
      props.t("features.servise2.desc"),
    icon: BookOpenCheckIcon,
  },
  {
    title: props.t("features.servise3.title"),
    description:
      props.t("features.servise3.desc"),
    icon: ZapIcon,
  },
  {
    title: props.t("features.servise4.title"),
    description:
      props.t("features.servise4.desc"),
    icon: StarIcon,
  },
]);
</script>
