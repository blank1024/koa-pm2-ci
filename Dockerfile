# 使用docker跑pm2
# 安装pm2
FROM node:latest
RUN npm install -g pm2

CMD ["pm2-runtime", "process.yml"]