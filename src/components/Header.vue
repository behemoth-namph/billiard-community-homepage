<template>
  <header
    :class="`sticky top-0 z-50 w-full backdrop-blur-lg transition-all duration-500 ${
      isScrolled
        ? 'bg-background/80 shadow-lg border-b border-border/20'
        : 'bg-transparent'
    }`"
  >
    <div class="container flex h-16 items-center justify-between">
      <div class="flex items-center gap-2 font-bold animate-float">
        <div
          class="size-8 rounded-lg bg-gradient-to-br from-primary to-primary/70 flex items-center justify-center text-primary-foreground animate-pulse-glow"
        >
          S
        </div>
        <span
          class="bg-gradient-to-r from-foreground to-foreground/70 bg-clip-text text-transparent"
          >SaaSify</span
        >
      </div>

      <nav class="hidden md:flex gap-8">
        <a
          href="#features"
          class="text-sm font-medium text-muted-foreground transition-all duration-300 hover:text-foreground hover:scale-105 relative group"
        >
          Features
          <span
            class="absolute -bottom-1 left-0 w-0 h-0.5 bg-primary transition-all duration-300 group-hover:w-full"
          ></span>
        </a>
        <a
          href="#testimonials"
          class="text-sm font-medium text-muted-foreground transition-all duration-300 hover:text-foreground hover:scale-105 relative group"
        >
          Testimonials
          <span
            class="absolute -bottom-1 left-0 w-0 h-0.5 bg-primary transition-all duration-300 group-hover:w-full"
          ></span>
        </a>
        <a
          href="#pricing"
          class="text-sm font-medium text-muted-foreground transition-all duration-300 hover:text-foreground hover:scale-105 relative group"
        >
          Pricing
          <span
            class="absolute -bottom-1 left-0 w-0 h-0.5 bg-primary transition-all duration-300 group-hover:w-full"
          ></span>
        </a>
        <a
          href="#faq"
          class="text-sm font-medium text-muted-foreground transition-all duration-300 hover:text-foreground hover:scale-105 relative group"
        >
          FAQ
          <span
            class="absolute -bottom-1 left-0 w-0 h-0.5 bg-primary transition-all duration-300 group-hover:w-full"
          ></span>
        </a>
      </nav>

      <div class="hidden md:flex gap-4 items-center">
        <button
          @click="toggleTheme"
          class="inline-flex items-center justify-center rounded-full w-10 h-10 text-sm font-medium transition-colors hover:bg-accent hover:text-accent-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50"
        >
          <SunIcon v-if="isDark" class="size-[18px]" />
          <MoonIcon v-else class="size-[18px]" />
          <span class="sr-only">Toggle theme</span>
        </button>
        <a
          href="#"
          class="text-sm font-medium text-muted-foreground transition-colors hover:text-foreground"
        >
          Log in
        </a>
        <button
          class="inline-flex items-center justify-center rounded-full text-sm font-medium ring-offset-background transition-all duration-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 hover:scale-105 hover:shadow-lg h-10 px-4 py-2 hover-glow"
        >
          Get Started
          <ChevronRightIcon
            class="ml-1 size-4 transition-transform duration-300 group-hover:translate-x-1"
          />
        </button>
      </div>

      <div class="flex items-center gap-4 md:hidden">
        <button
          @click="toggleTheme"
          class="inline-flex items-center justify-center rounded-full w-10 h-10 text-sm font-medium transition-colors hover:bg-accent hover:text-accent-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50"
        >
          <SunIcon v-if="isDark" class="size-[18px]" />
          <MoonIcon v-else class="size-[18px]" />
        </button>
        <button
          @click="mobileMenuOpen = !mobileMenuOpen"
          class="inline-flex items-center justify-center rounded-md w-10 h-10 text-sm font-medium transition-colors hover:bg-accent hover:text-accent-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50"
        >
          <XIcon v-if="mobileMenuOpen" class="size-5" />
          <MenuIcon v-else class="size-5" />
          <span class="sr-only">Toggle menu</span>
        </button>
      </div>
    </div>

    <!-- Mobile menu -->
    <div
      v-if="mobileMenuOpen"
      class="md:hidden absolute top-16 inset-x-0 bg-background/95 backdrop-blur-lg border-b animate-in"
    >
      <div class="container py-4 flex flex-col gap-4">
        <a
          href="#features"
          class="py-2 text-sm font-medium"
          @click="mobileMenuOpen = false"
          >Features</a
        >
        <a
          href="#testimonials"
          class="py-2 text-sm font-medium"
          @click="mobileMenuOpen = false"
          >Testimonials</a
        >
        <a
          href="#pricing"
          class="py-2 text-sm font-medium"
          @click="mobileMenuOpen = false"
          >Pricing</a
        >
        <a
          href="#faq"
          class="py-2 text-sm font-medium"
          @click="mobileMenuOpen = false"
          >FAQ</a
        >
        <div class="flex flex-col gap-2 pt-2 border-t">
          <a
            href="#"
            class="py-2 text-sm font-medium"
            @click="mobileMenuOpen = false"
            >Log in</a
          >
          <button
            class="inline-flex items-center justify-center rounded-full text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2"
          >
            Get Started
            <ChevronRightIcon class="ml-1 size-4" />
          </button>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from "vue";
import {
  ChevronRightIcon,
  MenuIcon,
  XIcon,
  MoonIcon,
  SunIcon,
} from "lucide-vue-next";

const isScrolled = ref(false);
const mobileMenuOpen = ref(false);
const isDark = ref(false);

const handleScroll = () => {
  isScrolled.value = window.scrollY > 10;
};

const toggleTheme = () => {
  document.documentElement.classList.toggle("dark");
  isDark.value = document.documentElement.classList.contains("dark");
};

onMounted(() => {
  isDark.value = document.documentElement.classList.contains("dark");
  window.addEventListener("scroll", handleScroll);
});

onUnmounted(() => {
  window.removeEventListener("scroll", handleScroll);
});
</script>
