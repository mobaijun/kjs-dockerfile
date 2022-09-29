#!/bin/bash

# shellcheck disable=SC2046
docker rm $(docker stop generator)

# 打包
docker build -t mobaijun/generator .

# run
docker run -dit --restart=always --name=generator  -p 7777:7777 -v /etc/localtime:/etc/localtime mobaijun/generator

docker ps

# 获取到ID
id=$(docker ps |grep "generator" | awk '{print $1}')
echo "容器id:"$id
# 提交
docker commit 7227510800df  mobaijun/generator

# 推送
docker push mobaijun/generator
