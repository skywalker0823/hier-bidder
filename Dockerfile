# 使用 Node.js 14 作為基礎映像檔
FROM node:14

# 設定工作目錄
WORKDIR /app

# 複製 package.json 和 package-lock.json 到容器中
COPY package*.json ./

# 安裝應用程式所需的所有依賴項
RUN npm install

# 複製應用程式代碼到容器中
COPY . .

# 暴露應用程式運行的端口
EXPOSE 3000

# 定義運行應用程式的命令
CMD [ "npm", "start" ]