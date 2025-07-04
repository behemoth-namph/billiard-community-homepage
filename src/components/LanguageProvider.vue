<template>
  <div class="flex min-h-[100dvh] flex-col">
    <Header :t="t" />
    <main class="flex-1">
      <Hero :t="t" />

      <!-- Logos Section -->
      <!----<AnimatedSection>
        <section class="w-full py-12 border-y bg-muted/30">
          <div class="container px-4 md:px-6">
            <div
              class="flex flex-col items-center justify-center space-y-4 text-center"
            >
              <p class="text-sm font-medium text-muted-foreground">
                {{ t("logos.trusted") }}
              </p>
              <div
                class="flex flex-wrap items-center justify-center gap-8 md:gap-12 lg:gap-16"
              >
                <img
                  v-for="i in 5"
                  :key="i"
                  src="/placeholder-logo.svg"
                  :alt="`Company logo ${i}`"
                  width="120"
                  height="60"
                  class="h-8 w-auto opacity-70 grayscale transition-all hover:opacity-100 hover:grayscale-0"
                />
              </div>
            </div>
          </div>
        </section>
      </AnimatedSection>-->

      <Features :t="t" />

      <!-- How It Works Section -->
      <AnimatedSection>
        <section
          class="w-full py-20 md:py-32 bg-muted/30 relative overflow-hidden"
        >
          <div
            class="absolute inset-0 -z-10 h-full w-full bg-white dark:bg-black bg-[linear-gradient(to_right,#f0f0f0_1px,transparent_1px),linear-gradient(to_bottom,#f0f0f0_1px,transparent_1px)] dark:bg-[linear-gradient(to_right,#1f1f1f_1px,transparent_1px),linear-gradient(to_bottom,#1f1f1f_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_80%_50%_at_50%_50%,#000_40%,transparent_100%)]"
          ></div>

          <div class="container px-4 md:px-6 relative">
            <div
              class="flex flex-col items-center justify-center space-y-4 text-center mb-16 animate-in"
            >
              <div
                class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground"
              >
                {{ t("howItWorks.badge") }}
              </div>
              <h2 class="text-3xl md:text-4xl font-bold tracking-tight">
                {{ t("howItWorks.title") }}
              </h2>
              <p class="max-w-[800px] text-muted-foreground md:text-lg">
                {{ t("howItWorks.subtitle") }}
              </p>
            </div>

            <div class="grid md:grid-cols-3 gap-8 md:gap-12 relative">
              <div
                class="hidden md:block absolute top-1/2 left-0 right-0 h-0.5 bg-gradient-to-r from-transparent via-border to-transparent -translate-y-1/2 z-0 animate-pulse"
              ></div>

              <div
                v-for="(step, i) in steps"
                :key="i"
                :class="`relative z-10 flex flex-col items-center text-center space-y-4 animate-fade-in-up animate-delay-${
                  (i + 1) * 200
                } group`"
              >
                <div
                  :class="`flex h-16 w-16 items-center justify-center rounded-full bg-gradient-to-br from-primary to-primary/70 text-primary-foreground text-xl font-bold shadow-lg transition-all duration-300 group-hover:scale-110 hover-glow animate-float animate-delay-${
                    i * 200
                  }`"
                >
                  {{ step.step }}
                </div>
                <h3
                  class="text-xl font-bold transition-colors duration-300 group-hover:text-primary"
                >
                  {{ t(step.titleKey) }}
                </h3>
                <p
                  class="text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80"
                >
                  {{ t(step.descKey) }}
                </p>
              </div>
            </div>
          </div>
        </section>
      </AnimatedSection>

      <!----<Pricing :t="t" />-->

      <FAQ :t="t" />

      <Testimonials :t="t" />

      <Contact :t="t" />

      <!-- CTA Section -->
      <!---<AnimatedSection>
        <section
          class="w-full py-20 md:py-32 bg-gradient-to-br from-primary to-primary/80 text-primary-foreground relative overflow-hidden"
        >
          <div
            class="absolute inset-0 -z-10 bg-[linear-gradient(to_right,#ffffff10_1px,transparent_1px),linear-gradient(to_bottom,#ffffff10_1px,transparent_1px)] bg-[size:4rem_4rem] animate-pulse"
          ></div>
          <div
            class="absolute -top-24 -left-24 w-64 h-64 bg-white/10 rounded-full blur-3xl animate-float"
          ></div>
          <div
            class="absolute -bottom-24 -right-24 w-64 h-64 bg-white/10 rounded-full blur-3xl animate-float animate-delay-300"
          ></div>

          <div
            class="absolute top-20 left-20 w-2 h-2 bg-white/20 rounded-full animate-float animate-delay-100"
          ></div>
          <div
            class="absolute top-40 right-40 w-3 h-3 bg-white/15 rounded-full animate-float animate-delay-400"
          ></div>
          <div
            class="absolute bottom-40 left-40 w-1.5 h-1.5 bg-white/25 rounded-full animate-float animate-delay-600"
          ></div>

          <div class="container px-4 md:px-6 relative">
            <div
              class="flex flex-col items-center justify-center space-y-6 text-center"
            >
              <h2
                class="text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight animate-fade-in-up bg-gradient-to-r from-white to-white/80 bg-clip-text text-transparent"
              >
                {{ t("cta.title") }}
              </h2>
              <p
                class="mx-auto max-w-[700px] text-primary-foreground/80 md:text-xl animate-fade-in-up animate-delay-200"
              >
                {{ t("cta.subtitle") }}
              </p>
              <div
                class="flex flex-col sm:flex-row gap-4 mt-4 animate-fade-in-up animate-delay-400"
              >
                <button
                  class="inline-flex items-center justify-center rounded-full text-base font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-secondary text-secondary-foreground hover:bg-secondary/80 h-12 px-8 hover-lift hover-glow group"
                >
                  {{ t("cta.startTrial") }}
                  <svg
                    class="ml-2 size-4 transition-transform duration-300 group-hover:translate-x-1"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 12h14m-7-7l7 7-7 7"
                    />
                  </svg>
                </button>
                <button
                  class="inline-flex items-center justify-center rounded-full text-base font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-transparent border border-white text-white hover:bg-white/10 h-12 px-8 hover-lift"
                >
                  {{ t("cta.scheduleDemo") }}
                </button>
              </div>
              <p
                class="text-sm text-primary-foreground/80 mt-4 animate-fade-in-up animate-delay-600"
              >
                {{ t("cta.disclaimer") }}
              </p>
            </div>
          </div>
        </section>
      </AnimatedSection>-->
    </main>

    <!-- Footer -->
    <footer class="w-full border-t bg-background/95 backdrop-blur-sm">
      <div class="container flex flex-col gap-8 px-4 py-10 md:px-6 lg:py-16">
        <div class="grid gap-8 sm:grid-cols-2 md:grid-cols-4">
          <div class="space-y-4">
            <img
              :src="isDark ? '/logo_wh.webp' : '/logo.webp'"
              alt="logo"
              width="80"
              height="32"
              class="h-8 w-auto transition-all"
            />
            <p class="text-sm text-muted-foreground">
              {{ t("footer.description") }}
            </p>
          </div>
          <div class="space-y-4">
            <h2 class="text-sm font-bold">{{ t("footer.product") }}</h2>
            <ul class="space-y-2 text-sm">
              <li>
                <a
                  href="#features"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >{{ t("nav.features") }}</a
                >
              </li>
              <li>
                <a
                  href="#pricing"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >{{ t("nav.pricing") }}</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Integrations</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >API</a
                >
              </li>
            </ul>
          </div>
          <div class="space-y-4">
            <h2 class="text-sm font-bold">{{ t("footer.resources") }}</h2>
            <ul class="space-y-2 text-sm">
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Documentation</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Guides</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Blog</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Support</a
                >
              </li>
            </ul>
          </div>
          <div class="space-y-4">
            <h2 class="text-sm font-bold">{{ t("footer.company") }}</h2>
            <ul class="space-y-2 text-sm">
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >About</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Careers</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Privacy Policy</a
                >
              </li>
              <li>
                <a
                  href="#"
                  class="text-muted-foreground hover:text-foreground transition-colors"
                  >Terms of Service</a
                >
              </li>
            </ul>
          </div>
        </div>
        <div
          class="flex flex-col gap-4 sm:flex-row justify-between items-center border-t border-border/40 pt-8"
        >
          <p class="text-xs text-muted-foreground">
            &copy; 2024 SaaSify. {{ t("footer.copyright") }}
          </p>
          <div class="flex gap-4">
            <a
              href="#"
              class="text-xs text-muted-foreground hover:text-foreground transition-colors"
              >Privacy Policy</a
            >
            <a
              href="#"
              class="text-xs text-muted-foreground hover:text-foreground transition-colors"
              >Terms of Service</a
            >
            <a
              href="#"
              class="text-xs text-muted-foreground hover:text-foreground transition-colors"
              >Cookie Policy</a
            >
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted, computed } from "vue";
import { getCurrentLanguage, useTranslations } from "../i18n";

import Header from "./Header.vue";
import Hero from "./Hero.vue";
import Features from "./Features.vue";
// import Pricing from "./Pricing.vue";
import FAQ from "./FAQ.vue";
import Contact from "./Contact.vue";
import Testimonials from "./Testimonials.vue";
import AnimatedSection from "./AnimatedSection.vue";

const currentLang = ref("en");
const isDark = ref(false);

const t = computed(() => {
  return useTranslations(currentLang.value);
});

const steps = computed(() => [
  {
    step: "01",
    titleKey: "howItWorks.step1.title",
    descKey: "howItWorks.step1.desc",
  },
  {
    step: "02",
    titleKey: "howItWorks.step2.title",
    descKey: "howItWorks.step2.desc",
  },
  {
    step: "03",
    titleKey: "howItWorks.step3.title",
    descKey: "howItWorks.step3.desc",
  },
]);

const testimonials = computed(() => [
  {
    quote: t.value("testimonials.user1.quote"),
    author: t.value("testimonials.user1.author"),
    role: t.value("testimonials.user1.role"),
    rating: t.value("testimonials.user1.rating"),
  },
  {
    quote: t.value("testimonials.user2.quote"),
    author: t.value("testimonials.user2.author"),
    role: t.value("testimonials.user2.role"),
    rating: t.value("testimonials.user2.rating"),
  },
  {
    quote: t.value("testimonials.user3.quote"),
    author: t.value("testimonials.user3.author"),
    role: t.value("testimonials.user3.role"),
    rating: t.value("testimonials.user3.rating"),
  },
]);

const handleLanguageChange = (event) => {
  currentLang.value = event.detail;
};

const updateIsDark = () => {
  isDark.value = document.documentElement.classList.contains("dark");
};

onMounted(() => {
  currentLang.value = getCurrentLanguage();
  updateIsDark();

  const observer = new MutationObserver(() => {
    updateIsDark();
  });

  observer.observe(document.documentElement, {
    attributes: true,
    attributeFilter: ["class"],
  });

  window.addEventListener("languageChanged", handleLanguageChange);
});

onUnmounted(() => {
  window.removeEventListener("languageChanged", handleLanguageChange);
  observer.disconnect();
});
</script>
