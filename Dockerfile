# 使用docker跑pm2
# 安装pm2
FROM node:alpine

COPY . /app
WORKDIR /app

# 设置淘宝镜像
RUN npm set registry https://registry.npm.taobao.org 
# 全局安装pm2
RUN npm install -g pm2

# 安装依赖
RUN npm install

EXPOSE 5000
CMD ["pm2-runtime", "ecosystem.yaml"]

# 构建代码
# docker build -t myapp .

# 运行代码
# docker run -d -p 5000:5000 --rm --name myapp