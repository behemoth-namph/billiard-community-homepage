<template>
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
                href="#faq"
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("nav.faq") }}</a
              >
            </li>
            <li>
              <a
                href="#testimonials"
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("nav.testimonials") }}</a
              >
            </li>
            <li>
              <a
                href="#contact"
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("nav.contact") }}</a
              >
            </li>
          </ul>
        </div>
        <div class="space-y-4">
          <h2 class="text-sm font-bold">{{ t("footer.service") }}</h2>
          <ul class="space-y-2 text-sm">
            <li>
              <a
                href="https://tournaments.vibico.co/tournaments"
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("footer.service.tournament") }}
              </a>
            </li>
            <li>
              <a
                href="https://academy.vibico.co/"
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("footer.service.learning") }}
              </a>
            </li>
            <li>
              <span
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("footer.service.shopping") }}
              </span>
            </li>
            <li>
              <span
                class="text-muted-foreground hover:text-foreground transition-colors"
                >{{ t("footer.service.players") }}
              </span>
            </li>
          </ul>
        </div>
        <div class="space-y-4">
          <h2 class="text-sm font-bold">{{ t("footer.contact") }}</h2>
          <div class="flex space-x-4 mt-4">
            <a
              href="https://www.facebook.com/vietnambilliardscommunity/"
              aria-label="Facebook"
              class="text-blue-600 hover:text-blue-800 text-2xl"
            >
              <i class="bi bi-facebook"></i>
              <FacebookIcon
                class="transition-all text-gray-400 duration-300 hover:scale-110 hover:text-primary size-5"
              />
            </a>
            <a
              href="mailto:support@vibico.co"
              aria-label="Email"
              class="text-gray-600 hover:text-gray-800 text-2xl"
            >
              <MailCheckIcon
                class="transition-all text-gray-400 duration-300 hover:scale-110 hover:text-primary size-5"
              />
            </a>
            <a
              href="tel:+84987736891"
              aria-label="Phone"
              class="text-green-600 hover:text-green-800 text-2xl"
            >
              <PhoneIcon
                class="transition-all text-gray-400 duration-300 hover:text-primary hover:scale-110 size-5"
              />
            </a>
          </div>
        </div>
      </div>
      <div
        class="flex flex-col gap-4 sm:flex-row justify-between items-center border-t border-border/40 pt-8"
      >
        <p class="text-xs text-muted-foreground">
          {{ t("footer.copyright") }}
        </p>
        <div class="flex gap-4">
          <span
            class="text-xs text-muted-foreground hover:text-foreground transition-colors"
            >{{ t("footer.privacy") }}
          </span>
          <span
            class="text-xs text-muted-foreground hover:text-foreground transition-colors"
            >{{ t("footer.terms") }}
          </span>
          <span
            class="text-xs text-muted-foreground hover:text-foreground transition-colors"
            >{{ t("footer.cookies") }}
          </span>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
import { FacebookIcon, MailCheckIcon, PhoneIcon } from "lucide-vue-next";

defineProps({
  t: {
    type: Function,
    required: true,
  },
  isDark: {
    type: Boolean,
    default: false,
  },
});
</script>
