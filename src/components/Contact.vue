<template>
  <section id="contact" class="py-20">
    <AnimatedSection
      class="container text-center mb-12 space-y-4"
      data-aos="fade-up"
    >
      <div
        class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground hover-lift"
      >
        {{ t("contact.badge") }}
      </div>
      <h2 class="text-4xl font-bold">{{ t("contact.title") }}</h2>
      <p class="mt-2 text-lg text-gray-600">
        {{ t("contact.subtitle") }}
      </p>
    </AnimatedSection>

    <div class="container px-4 md:px-6" data-aos="fade-up" data-aos-delay="100">
      <AnimatedSection class="grid gap-y-8 lg:grid-cols-3 lg:gap-x-8">
        <div
          class="flex flex-col items-center justify-center h-full overflow-hidden border border-border/40 bg-gradient-to-b from-background to-muted/10 backdrop-blur transition-all duration-500 hover:shadow-xl hover:border-primary/20 rounded-lg hover-lift group-hover:bg-gradient-to-b group-hover:from-primary/5 group-hover:to-secondary/5 p-6"
          data-aos="fade-up"
          data-aos-delay="200"
        >
          <MapPinIcon class="text-primary size-6 animate-bounce mb-2" />
          <h3
            class="text-xl font-bold transition-colors duration-300 group-hover:text-primary mb-2"
          >
            {{ t("contact.address.title") }}
          </h3>
          <p
            class="text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80 text-center"
          >
            {{ t("contact.address.desc") }}
          </p>
        </div>

        <div
          class="flex flex-col items-center justify-center h-full overflow-hidden border border-border/40 bg-gradient-to-b from-background to-muted/10 backdrop-blur transition-all duration-500 hover:shadow-xl hover:border-primary/20 rounded-lg hover-lift group-hover:bg-gradient-to-b group-hover:from-primary/5 group-hover:to-secondary/5 p-6"
          data-aos="fade-up"
          data-aos-delay="300"
        >
          <PhoneIcon class="text-primary size-6 animate-bounce mb-2" />
          <h3
            class="text-xl font-bold transition-colors duration-300 group-hover:text-primary mb-2"
          >
            {{ t("contact.phone.title") }}
          </h3>
          <p
            class="text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80 text-center"
          >
            {{ t("contact.phone.desc") }}
          </p>
        </div>

        <div
          class="flex flex-col items-center justify-center h-full overflow-hidden border border-border/40 bg-gradient-to-b from-background to-muted/10 backdrop-blur transition-all duration-500 hover:shadow-xl hover:border-primary/20 rounded-lg hover-lift group-hover:bg-gradient-to-b group-hover:from-primary/5 group-hover:to-secondary/5 p-6"
          data-aos="fade-up"
          data-aos-delay="400"
        >
          <MailCheckIcon class="text-primary size-6 animate-bounce mb-2" />
          <h3
            class="text-xl font-bold transition-colors duration-300 group-hover:text-primary mb-2"
          >
            {{ t("contact.email.title") }}
          </h3>
          <p
            class="text-muted-foreground transition-colors duration-300 group-hover:text-foreground/80 text-center"
          >
            {{ t("contact.email.desc") }}
          </p>
        </div>
      </AnimatedSection>

      <AnimatedSection class="mt-8" data-aos="fade-up" data-aos-delay="300">
        <div class="w-full h-96 rounded-lg overflow-hidden shadow">
          <iframe
            class="w-full h-full"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5980.865020498634!2d105.84203367676301!3d20.98030128943848!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad5aab5e467b%3A0xe488c222a66a927a!2zNjA5IMSQLiBUcsawxqFuZyDEkOG7i25oLCBUw6JuIE1haSwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e1!3m2!1svi!2s!4v1749610862255!5m2!1svi!2s"
            frameborder="0"
            allowfullscreen
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
            title="Google Maps"
          ></iframe>
        </div>
      </AnimatedSection>
    </div>
  </section>
</template>

<script setup>
import { MapPinIcon, PhoneIcon, MailCheckIcon } from "lucide-vue-next";

import AnimatedSection from "./AnimatedSection.vue";

const props = defineProps({
  t: {
    type: Function,
    required: true,
  },
});
</script>
