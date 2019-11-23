# pm2 + docker 实现 node.js 后端自动化部署

## 思路

1. 使用pm2连接部署服务器并且从远程仓库上下载代码到部署服务器中
2. 使用项目中的dockerfile构建镜像并且运行该容器
3. 容器中写好运行node.js项目的代码
4. 完成自动化部署

## 补充

当项目放在github中时，可以使用github actions运行pm2进行部署