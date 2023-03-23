# 使用官方Node.js基础镜像
FROM node:14-alpine

# 设置工作目录
WORKDIR /usr/src/app

# 复制package.json和package-lock.json到工作目录
COPY package*.json ./

# 安装项目依赖项
RUN npm install

# 复制项目文件到工作目录
COPY . .

# 设置服务器将监听的端口
EXPOSE 3000

# 启动服务
CMD [ "npm", "start" ]