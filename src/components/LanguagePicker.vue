<template>
  <div class="relative">
    <button
      @click="isOpen = !isOpen"
      class="inline-flex items-center justify-center rounded-md w-10 h-10 text-sm font-medium transition-colors hover:bg-accent hover:text-accent-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50"
    >
      <GlobeIcon class="size-4" />
      <span class="sr-only">Change language</span>
    </button>

    <Transition
      enter-active-class="transition-all duration-200 ease-out"
      enter-from-class="opacity-0 scale-95 translate-y-1"
      enter-to-class="opacity-100 scale-100 translate-y-0"
      leave-active-class="transition-all duration-150 ease-in"
      leave-from-class="opacity-100 scale-100 translate-y-0"
      leave-to-class="opacity-0 scale-95 translate-y-1"
    >
      <div
        v-if="isOpen"
        class="absolute right-0 top-12 z-50 min-w-[8rem] overflow-hidden rounded-md border bg-popover p-1 text-popover-foreground shadow-md animate-in"
        @click.stop
      >
        <div
          v-for="(name, code) in languages"
          :key="code"
          @click="changeLanguage(code)"
          :class="`relative flex cursor-pointer select-none items-center rounded-sm px-2 py-1.5 text-sm outline-none transition-colors hover:bg-accent hover:text-accent-foreground ${
            currentLang === code ? 'bg-accent text-accent-foreground' : ''
          }`"
        >
          <span class="mr-2 text-xs">{{ getFlagEmoji(code) }}</span>
          {{ name }}
          <CheckIcon v-if="currentLang === code" class="ml-auto size-4" />
        </div>
      </div>
    </Transition>

    <!-- Backdrop -->
    <div v-if="isOpen" class="fixed inset-0 z-40" @click="isOpen = false"></div>
  </div>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from "vue";
import { GlobeIcon, CheckIcon } from "lucide-vue-next";
import { languages, getCurrentLanguage, setCurrentLanguage } from "../i18n";

const isOpen = ref(false);
const currentLang = ref("en");

const getFlagEmoji = (code) => {
  const flags = {
    en: "🇺🇸",
    vi: "🇻🇳",
    ja: "🇯🇵",
    es: "🇪🇸",
    fr: "🇫🇷",
  };
  return flags[code] || "🌐";
};

const changeLanguage = (lang) => {
  currentLang.value = lang;
  setCurrentLanguage(lang);
  isOpen.value = false;
};

const handleClickOutside = (event) => {
  if (!event.target.closest(".relative")) {
    isOpen.value = false;
  }
};

onMounted(() => {
  currentLang.value = getCurrentLanguage();
  document.addEventListener("click", handleClickOutside);
});

onUnmounted(() => {
  document.removeEventListener("click", handleClickOutside);
});
</script>
