# Stage 1: Build stage
FROM node:18 AS build-stage

# กำหนด working directory
WORKDIR /app

# คัดลอก package.json และ package-lock.json ไปที่ container
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอก source code ทั้งหมดไปที่ container
COPY . .

# สร้าง build สำหรับโปรเจ็กต์
RUN npm run build

# Stage 2: Production stage
FROM node:18-slim

# กำหนด working directory
WORKDIR /app

# คัดลอก dependencies และ build output จาก build stage
COPY --from=build-stage /app/node_modules /app/node_modules
COPY --from=build-stage /app/.nuxt /app/.nuxt
COPY --from=build-stage /app/.output /app/.output
COPY --from=build-stage /app/package.json /app/package.json

# ระบุ port ที่ container จะใช้
EXPOSE 3000

# รัน Nuxt.js application
CMD ["npm", "start"]