import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import vue from "@astrojs/vue";

export default defineConfig({
  integrations: [
    tailwind({
      applyBaseStyles: false,
    }),
    vue(),
  ],
  output: "static",
});
