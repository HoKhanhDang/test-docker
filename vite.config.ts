import { defineConfig } from 'vite'

export default defineConfig({
  server: {
    port: 3000, // Chạy Vite trên port 3000
    host: '0.0.0.0', // Lắng nghe trên tất cả IP (cần thiết cho Docker)
  },
  preview: {
    port: 3000, // Chạy `vite preview` trên port 3000
    host: '0.0.0.0',
  },
})
