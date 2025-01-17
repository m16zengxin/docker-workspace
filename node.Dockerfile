# 选择一个体积小的镜像 (~5MB)
FROM node:14-alpine

RUN echo zengxin-info-----

# 设置为工作目录，以下 RUN/CMD 命令都是在工作目录中进行执行
WORKDIR /code/docker-learn

# 把代码置于镜像
ADD . /code/docker-learn

# 装包
RUN yarn

EXPOSE 3000

# 启动 Node Server
CMD npm start
