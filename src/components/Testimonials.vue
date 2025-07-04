<template>
  <section
    id="testimonials"
    class="testimonials w-full py-20 md:py-32 bg-muted/30"
  >
    <div class="container px-4 md:px-6" data-aos="fade-up">
      <div
        class="flex flex-col items-center justify-center space-y-4 text-center mb-12 animate-in"
      >
        <div
          class="inline-flex items-center rounded-full border px-4 py-1.5 text-sm font-medium bg-secondary text-secondary-foreground"
        >
          {{ t("testimonials.badge") }}
        </div>
        <h2 class="text-3xl md:text-4xl font-bold tracking-tight">
          {{ t("testimonials.title") }}
        </h2>
        <p class="max-w-[800px] text-muted-foreground md:text-lg">
          {{ t("testimonials.subtitle") }}
        </p>
      </div>
    </div>

    <div class="container mx-auto px-4" data-aos="fade-up" data-aos-delay="100">
      <BaseSlider :items="testimonials" :auto-height="false">
        <template #default="{ item }">
          <div
            class="testimonial-item h-full border border-border/40 bg-gradient-to-b from-background to-muted/10 backdrop-blur transition-all duration-500 hover:shadow-xl hover:border-primary/20 hover-glow:hover rounded-lg group-hover:bg-gradient-to-b group-hover:from-primary/5 group-hover:to-secondary/5"
          >
            <div class="flex justify-center mb-4">
              <svg
                v-for="j in item.rating"
                :key="j"
                class="size-6 text-yellow-500 fill-yellow-500"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
                />
              </svg>
            </div>
            <p v-html="item.quote"></p>

            <img :src="item.avatar" class="testimonial-img" alt="img" />
            <h3>{{ item.author }}</h3>
            <h4>{{ item.role }}</h4>
          </div>
        </template>
      </BaseSlider>
    </div>
  </section>
</template>

<script setup>
import { computed } from "vue";
import { Pagination, Autoplay } from "swiper/modules";

import BaseSlider from "./BaseSlider.vue";

import "swiper/css";
import "swiper/css/pagination";

const props = defineProps({
  t: {
    type: Function,
    required: true,
  },
});

const modules = [Pagination, Autoplay];

const testimonials = computed(() => [
  {
    quote: props.t("testimonials.user1.quote"),
    author: props.t("testimonials.user1.author"),
    role: props.t("testimonials.user1.role"),
    rating: props.t("testimonials.user1.rating"),
    avatar: props.t("testimonials.user1.avatar"),
  },
  {
    quote: props.t("testimonials.user2.quote"),
    author: props.t("testimonials.user2.author"),
    role: props.t("testimonials.user2.role"),
    rating: props.t("testimonials.user2.rating"),
    avatar: props.t("testimonials.user2.avatar"),
  },
  {
    quote: props.t("testimonials.user3.quote"),
    author: props.t("testimonials.user3.author"),
    role: props.t("testimonials.user3.role"),
    rating: props.t("testimonials.user3.rating"),
    avatar: props.t("testimonials.user3.avatar"),
  },
  {
    quote: props.t("testimonials.user4.quote"),
    author: props.t("testimonials.user4.author"),
    role: props.t("testimonials.user4.role"),
    rating: props.t("testimonials.user4.rating"),
    avatar: props.t("testimonials.user4.avatar"),
  },
]);
</script>

<style>
.testimonials .testimonial-item {
  background-color: var(--surface-color);
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  box-sizing: content-box;
  padding: 30px 15px;
  margin: 40px 20px;
  display: flex;
  flex-direction: column;
  text-align: center;
  transition: 0.3s;
}

.testimonials .testimonial-item .testimonial-img {
  width: 90px;
  border-radius: 50%;
  border: 4px solid var(--background-color);
  margin: 0 auto;
}
.testimonials .testimonial-item h3 {
  font-size: 18px;
  font-weight: 700;
  margin: 10px 0 5px 0;
}
.testimonials .testimonial-item h4 {
  font-size: 14px;
  color: color-mix(in srgb, var(--default-color), transparent 40%);
  margin: 0;
}
.testimonials .testimonial-item p {
  font-size: 14px;
  font-style: italic;
  margin: 0 auto 15px auto;
}

.testimonials .swiper-wrapper {
  height: auto;
}
.testimonials .swiper-pagination {
  margin-top: 20px;
  position: relative;
}
.testimonials .swiper-pagination .swiper-pagination-bullet {
  width: 12px;
  height: 12px;
  background-color: color-mix(in srgb, var(--default-color), transparent 85%);
  opacity: 1;
}
.testimonials .swiper-pagination .swiper-pagination-bullet-active {
  background-color: var(--accent-color);
}
.testimonials .swiper-slide {
  opacity: 0.3;
}
@media (max-width: 1199px) {
  .testimonials .swiper-slide-active {
    opacity: 1;
  }
  .testimonials .swiper-pagination {
    margin-top: 0;
  }
  .testimonials .testimonial-item {
    margin: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }
}
@media (min-width: 1200px) {
  .testimonials .swiper-slide-next {
    opacity: 1;
    transform: scale(1.12);
  }
}
</style>
