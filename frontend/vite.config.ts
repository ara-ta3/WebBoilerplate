import path from "path";
import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import "vitest/config";

export default defineConfig({
  base: "/",
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
  test: {
    globals: true,
    environment: "jsdom",
  },
});
