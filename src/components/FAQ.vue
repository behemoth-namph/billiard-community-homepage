<template>
  <section id="faq" class="w-full py-20 md:py-32">
    <div class="container px-4 md:px-6">
      <AnimatedSection
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground hover-lift"
        >
          FAQ
        </div>
        <h2
          class="text-3xl md:text-4xl font-bold tracking-tight bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent"
        >
          Frequently Asked Questions
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          Find answers to common questions about our platform.
        </p>
      </AnimatedSection>

      <div class="mx-auto max-w-3xl">
        <div class="w-full space-y-2">
          <AnimatedSection
            v-for="(faq, i) in faqs"
            :key="i"
            :delay="i * 100"
            class="group"
          >
            <div
              class="border border-border/40 rounded-lg overflow-hidden transition-all duration-300 hover:border-primary/30 hover:shadow-md hover-lift"
            >
              <button
                @click="toggleFAQ(i)"
                class="flex w-full items-center justify-between p-6 font-medium transition-all duration-300 hover:bg-muted/50 text-left group-hover:text-primary"
              >
                <span class="transition-colors duration-300">{{
                  faq.question
                }}</span>
                <ChevronDownIcon
                  :class="`h-4 w-4 shrink-0 transition-all duration-300 ${
                    openFAQ === i ? 'rotate-180 text-primary' : ''
                  } group-hover:text-primary`"
                />
              </button>

              <Transition
                enter-active-class="transition-all duration-300 ease-out"
                enter-from-class="opacity-0 max-h-0"
                enter-to-class="opacity-100 max-h-96"
                leave-active-class="transition-all duration-300 ease-in"
                leave-from-class="opacity-100 max-h-96"
                leave-to-class="opacity-0 max-h-0"
              >
                <div v-if="openFAQ === i" class="overflow-hidden">
                  <div
                    class="px-6 pb-6 text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80 animate-fade-in-up"
                  >
                    {{ faq.answer }}
                  </div>
                </div>
              </Transition>
            </div>
          </AnimatedSection>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from "vue";
import { ChevronDownIcon } from "lucide-vue-next";
import AnimatedSection from "./AnimatedSection.vue";

const openFAQ = ref(null);

const toggleFAQ = (index) => {
  openFAQ.value = openFAQ.value === index ? null : index;
};

const faqs = [
  {
    question: "How does the 14-day free trial work?",
    answer:
      "Our 14-day free trial gives you full access to all features of your selected plan. No credit card is required to sign up, and you can cancel at any time during the trial period with no obligation.",
  },
  {
    question: "Can I change plans later?",
    answer:
      "Yes, you can upgrade or downgrade your plan at any time. If you upgrade, the new pricing will be prorated for the remainder of your billing cycle. If you downgrade, the new pricing will take effect at the start of your next billing cycle.",
  },
  {
    question: "Is there a limit to how many users I can add?",
    answer:
      "The number of users depends on your plan. The Starter plan allows up to 5 team members, the Professional plan allows up to 20, and the Enterprise plan has no limit on team members.",
  },
  {
    question:
      "Do you offer discounts for nonprofits or educational institutions?",
    answer:
      "Yes, we offer special pricing for nonprofits, educational institutions, and open-source projects. Please contact our sales team for more information.",
  },
  {
    question: "How secure is my data?",
    answer:
      "We take security very seriously. All data is encrypted both in transit and at rest. We use industry-standard security practices and regularly undergo security audits. Our platform is compliant with GDPR, CCPA, and other relevant regulations.",
  },
  {
    question: "What kind of support do you offer?",
    answer:
      "Support varies by plan. All plans include email support, with the Professional plan offering priority email support. The Enterprise plan includes 24/7 phone and email support. We also have an extensive knowledge base and community forum available to all users.",
  },
];
</script>
