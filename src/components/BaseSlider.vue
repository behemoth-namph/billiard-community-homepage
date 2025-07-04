<template>
  <div class="base-carousel-wrapper">
    <Swiper
      @swiper="onSwiperInit"
      :modules="[Navigation, Pagination, Autoplay, EffectCoverflow]"
      :loop="loop"
      :autoplay="autoplay"
      :speed="speed"
      :slides-per-view="slidesPerView"
      :breakpoints="breakpoints"
      :space-between="spaceBetween"
      :auto-height="autoHeight"
      :effect="effect"
      :coverflow-effect="effect === 'coverflow' ? coverflowEffect : null"
      :pagination="
        showPagination
          ? { el: '.custom-swiper-pagination', clickable: true }
          : false
      "
      class="base-carousel"
    >
      <SwiperSlide v-for="(item, index) in items" :key="index">
        <slot :item="item" :index="index"></slot>
      </SwiperSlide>
      <div
        v-if="showPagination"
        class="custom-swiper-pagination py-3 mt-4 flex justify-center gap-2"
      />
    </Swiper>
  </div>
</template>

<script setup>
import { ref } from "vue";
import {
  Navigation,
  Pagination,
  Autoplay,
  EffectCoverflow,
} from "swiper/modules";
import { Swiper, SwiperSlide } from "swiper/vue";

defineProps({
  items: {
    type: Array,
    required: true,
  },
  breakpoints: {
    type: Object,
    default: () => ({
      768: { slidesPerView: 2 },
      1024: { slidesPerView: 3 },
      1400: { slidesPerView: 3 },
    }),
  },
  spaceBetween: {
    type: Number,
    default: 20,
  },
  autoHeight: {
    type: Boolean,
    default: false,
  },
  autoplay: {
    type: [Boolean, Object],
    default: () => ({
      delay: 7000,
      disableOnInteraction: false,
    }),
  },
  loop: {
    type: Boolean,
    default: true,
  },
  slidesPerView: {
    type: [Number, String],
    default: "auto",
  },
  speed: {
    type: Number,
    default: 600,
  },
  effect: {
    type: String,
    default: "slide",
  },
  coverflowEffect: {
    type: Object,
    default: () => ({
      rotate: 50,
      stretch: 0,
      depth: 100,
      modifier: 1,
      slideShadows: true,
    }),
  },
  showPagination: {
    type: Boolean,
    default: true,
  },
});

const swiper = ref(null);

const onSwiperInit = (instance) => {
  swiper.value = instance;
};
</script>

<style>
.custom-swiper-pagination .swiper-pagination-bullet {
  width: 12px;
  height: 12px;
  background-color: #d1d5db;
  border-radius: 9999px;
  opacity: 0.5;
  transition: all 0.3s ease;
}
.custom-swiper-pagination .swiper-pagination-bullet-active {
  background-color: hsl(var(--primary));
  opacity: 1;
  transform: scale(1.2);
}
</style>
