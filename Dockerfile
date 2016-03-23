#设置继承镜像
FROM registry.aliyuncs.com/zhaosiwen_registry/python:3

#提供一些作者的信息
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#安装flask
pip install flask

#监听5000端口
EXPOSE 5000

#挂载数据卷“/src”
VOLUME ["/src"]

#进入“/src”
WORKDIR /src
