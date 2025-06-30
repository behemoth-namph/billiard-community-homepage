<template>
  <section id="features" class="w-full py-20 md:py-32">
    <div class="container px-4 md:px-6">
      <AnimatedSection
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground hover-lift"
        >
          Features
        </div>
        <h2
          class="text-3xl md:text-4xl font-bold tracking-tight bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent"
        >
          Everything You Need to Succeed
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          Our comprehensive platform provides all the tools you need to
          streamline your workflow, boost productivity, and achieve your goals.
        </p>
      </AnimatedSection>

      <div class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
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
import {
  ZapIcon,
  BarChartIcon,
  UsersIcon,
  ShieldIcon,
  LayersIcon,
  StarIcon,
} from "lucide-vue-next";
import AnimatedSection from "./AnimatedSection.vue";

const features = [
  {
    title: "Smart Automation",
    description:
      "Automate repetitive tasks and workflows to save time and reduce errors.",
    icon: ZapIcon,
  },
  {
    title: "Advanced Analytics",
    description:
      "Gain valuable insights with real-time data visualization and reporting.",
    icon: BarChartIcon,
  },
  {
    title: "Team Collaboration",
    description:
      "Work together seamlessly with integrated communication tools.",
    icon: UsersIcon,
  },
  {
    title: "Enterprise Security",
    description:
      "Keep your data safe with end-to-end encryption and compliance features.",
    icon: ShieldIcon,
  },
  {
    title: "Seamless Integration",
    description:
      "Connect with your favorite tools through our extensive API ecosystem.",
    icon: LayersIcon,
  },
  {
    title: "24/7 Support",
    description:
      "Get help whenever you need it with our dedicated support team.",
    icon: StarIcon,
  },
];
</script>
