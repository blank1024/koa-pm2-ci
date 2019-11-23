# 使用docker跑pm2
# 安装pm2
FROM alpine
RUN npm isntall pm2 -g 

CMD ["pm2-runtime", "process.yml"]