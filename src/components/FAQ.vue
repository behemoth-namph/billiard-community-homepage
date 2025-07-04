<template>
  <section id="faq" class="w-full py-20 md:py-32">
    <div class="container px-4 md:px-6">
      <AnimatedSection
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground hover-lift"
        >
          {{ t("faq.badge") }}
        </div>
        <h2
          class="text-3xl md:text-4xl font-bold tracking-tight bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent"
        >
          {{ t("faq.title") }}
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          {{ t("faq.subtitle") }}
        </p>
      </AnimatedSection>

      <div class="mx-auto">
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
                <span class="transition-colors duration-300">
                  {{ faq.question }}
                </span>
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
                    v-html="faq.answer"
                  ></div>
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
import { ref, computed } from "vue";
import { ChevronDownIcon } from "lucide-vue-next";
import AnimatedSection from "./AnimatedSection.vue";

const props = defineProps({
  t: {
    type: Function,
    required: true,
  },
});

const openFAQ = ref(null);

const toggleFAQ = (index) => {
  openFAQ.value = openFAQ.value === index ? null : index;
};

const faqs = computed(() => [
  {
    question: props.t("faq.question1"),
    answer: props.t("faq.answer1"),
  },
  {
    question: props.t("faq.question2"),
    answer: props.t("faq.answer2"),
  },
  {
    question: props.t("faq.question3"),
    answer: props.t("faq.answer3"),
  },
  {
    question: props.t("faq.question4"),
    answer: props.t("faq.answer4"),
  },
]);
</script>
