FROM node:18

# 设置工作目录
WORKDIR /app

# 复制应用程序到容器
COPY . .

# 安装依赖项并运行应用程序
RUN npm install
CMD npm run dev

# 映射容器端口到主机端口
EXPOSE 3000

# 映射数据卷
VOLUME ["/home/newird/blog/data", "/home/newird/blog/public"]

