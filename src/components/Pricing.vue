<template>
  <section
    id="pricing"
    class="w-full py-20 md:py-32 bg-muted/30 relative overflow-hidden"
  >
    <div
      class="absolute inset-0 -z-10 h-full w-full bg-white dark:bg-black bg-[linear-gradient(to_right,#f0f0f0_1px,transparent_1px),linear-gradient(to_bottom,#f0f0f0_1px,transparent_1px)] dark:bg-[linear-gradient(to_right,#1f1f1f_1px,transparent_1px),linear-gradient(to_bottom,#1f1f1f_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_80%_50%_at_50%_50%,#000_40%,transparent_100%)]"
    ></div>

    <div class="container px-4 md:px-6 relative">
      <div
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12 animate-in"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground"
        >
          Pricing
        </div>
        <h2 class="text-3xl md:text-4xl font-bold tracking-tight">
          Simple, Transparent Pricing
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          Choose the plan that's right for your business. All plans include a
          14-day free trial.
        </p>
      </div>

      <div class="mx-auto max-w-5xl">
        <div class="flex justify-center mb-8">
          <div
            class="inline-flex h-10 items-center justify-center rounded-full bg-muted p-1 text-muted-foreground"
          >
            <button
              @click="billingCycle = 'monthly'"
              :class="`inline-flex items-center justify-center whitespace-nowrap rounded-full px-6 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 ${
                billingCycle === 'monthly' ? 'bg-background  shadow-sm' : ''
              }`"
            >
              Monthly
            </button>
            <button
              @click="billingCycle = 'annually'"
              :class="`inline-flex items-center justify-center whitespace-nowrap rounded-full px-6 py-1.5 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 ${
                billingCycle === 'annually' ? 'bg-background  shadow-sm' : ''
              }`"
            >
              Annually (Save 20%)
            </button>
          </div>
        </div>

        <div class="grid gap-6 lg:grid-cols-3 lg:gap-8">
          <AnimatedSection
            v-for="(plan, i) in currentPlans"
            :key="i"
            :delay="i * 150"
            class="group"
          >
            <div
              :class="`relative overflow-hidden h-full transition-all duration-500 rounded-lg border hover-lift ${
                plan.popular
                  ? 'border-primary shadow-xl hover:shadow-2xl animate-pulse-glow'
                  : 'border-border/40 shadow-md hover:shadow-xl hover:border-primary/30'
              } bg-gradient-to-b from-background to-muted/10 backdrop-blur group-hover:scale-105`"
            >
              <div
                v-if="plan.popular"
                class="absolute top-0 right-0 bg-gradient-to-r from-primary to-secondary text-primary-foreground px-3 py-1 text-xs font-medium rounded-bl-lg animate-gradient"
              >
                Most Popular
              </div>

              <!-- Animated background pattern -->
              <div
                class="absolute inset-0 opacity-0 group-hover:opacity-10 transition-opacity duration-500"
              >
                <div
                  class="absolute inset-0 bg-gradient-to-br from-primary/20 to-secondary/20 animate-gradient"
                ></div>
              </div>

              <div class="p-6 flex flex-col h-full relative z-10">
                <h3
                  class="text-2xl font-bold transition-colors duration-300 group-hover:text-primary"
                >
                  {{ plan.name }}
                </h3>
                <div class="flex items-baseline mt-4">
                  <span
                    class="text-4xl font-bold transition-all duration-300 group-hover:scale-110 bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent"
                    >{{ plan.price }}</span
                  >
                  <span class="text-muted-foreground ml-1">/month</span>
                </div>
                <p
                  class="text-muted-foreground mt-2 transition-colors duration-300 group-hover:text-foreground/80"
                >
                  {{ plan.description }}
                </p>

                <ul class="space-y-3 my-6 flex-grow">
                  <li
                    v-for="(feature, j) in plan.features"
                    :key="j"
                    class="flex items-center transition-all duration-300 hover:translate-x-2"
                  >
                    <CheckIcon
                      class="mr-2 size-4 text-primary transition-all duration-300 group-hover:scale-110"
                    />
                    <span
                      class="transition-colors duration-300 group-hover:text-foreground"
                      >{{ feature }}</span
                    >
                  </li>
                </ul>

                <button
                  :class="`w-full mt-auto rounded-full inline-flex items-center justify-center text-sm font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 h-10 px-4 py-2 hover-lift group/button ${
                    plan.popular
                      ? 'bg-primary text-primary-foreground hover:bg-primary/90 hover-glow'
                      : 'border border-input bg-background hover:bg-accent hover:text-accent-foreground'
                  }`"
                >
                  <span
                    class="transition-transform duration-300 group-hover/button:scale-105"
                    >{{ plan.cta }}</span
                  >
                </button>
              </div>
            </div>
          </AnimatedSection>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref, computed } from "vue";
import { CheckIcon } from "lucide-vue-next";
import AnimatedSection from "./AnimatedSection.vue";

const billingCycle = ref("monthly");

const monthlyPlans = [
  {
    name: "Starter",
    price: "$29",
    description: "Perfect for small teams and startups.",
    features: [
      "Up to 5 team members",
      "Basic analytics",
      "5GB storage",
      "Email support",
    ],
    cta: "Start Free Trial",
  },
  {
    name: "Professional",
    price: "$79",
    description: "Ideal for growing businesses.",
    features: [
      "Up to 20 team members",
      "Advanced analytics",
      "25GB storage",
      "Priority email support",
      "API access",
    ],
    cta: "Start Free Trial",
    popular: true,
  },
  {
    name: "Enterprise",
    price: "$199",
    description: "For large organizations with complex needs.",
    features: [
      "Unlimited team members",
      "Custom analytics",
      "Unlimited storage",
      "24/7 phone & email support",
      "Advanced API access",
      "Custom integrations",
    ],
    cta: "Contact Sales",
  },
];

const annuallyPlans = [
  {
    name: "Starter",
    price: "$23",
    description: "Perfect for small teams and startups.",
    features: [
      "Up to 5 team members",
      "Basic analytics",
      "5GB storage",
      "Email support",
    ],
    cta: "Start Free Trial",
  },
  {
    name: "Professional",
    price: "$63",
    description: "Ideal for growing businesses.",
    features: [
      "Up to 20 team members",
      "Advanced analytics",
      "25GB storage",
      "Priority email support",
      "API access",
    ],
    cta: "Start Free Trial",
    popular: true,
  },
  {
    name: "Enterprise",
    price: "$159",
    description: "For large organizations with complex needs.",
    features: [
      "Unlimited team members",
      "Custom analytics",
      "Unlimited storage",
      "24/7 phone & email support",
      "Advanced API access",
      "Custom integrations",
    ],
    cta: "Contact Sales",
  },
];

const currentPlans = computed(() => {
  return billingCycle.value === "monthly" ? monthlyPlans : annuallyPlans;
});
</script>
