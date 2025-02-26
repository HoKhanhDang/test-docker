# Sử dụng Node.js làm base image
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Copy file package.json và package-lock.json để cài đặt dependencies
COPY package.json package-lock.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Build ứng dụng Vite
RUN npm run build

# Expose port 5173 (Vite mặc định chạy trên cổng này)
EXPOSE 3000

# Lệnh chạy ứng dụng Vite
CMD ["npm", "run", "preview"]
