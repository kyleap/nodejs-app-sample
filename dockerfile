# 使用官方 Node.js 基礎映像
FROM node:14

# 設定工作目錄
WORKDIR /usr/src/app

# 複製 package.json 和 package-lock.json 文件
COPY package*.json ./

# 安裝應用依賴
RUN npm install

# 將你的應用源代碼複製到映像中
COPY . .

# 應用運行在哪個端口
EXPOSE 3000

# 定義容器啟動時執行的命令
CMD ["node", "index.js"]
