#设置继承镜像
FROM registry.aliyuncs.com/zhaosiwen_registry/flask:origin

#提供一些作者的信息
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#更新apt-get缓存
RUN apt-get update

#安装requirements.txt中的依赖包
ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

#监听5000端口
EXPOSE 5000

#挂载数据卷“/src”
VOLUME ["/src"]

#进入“/src”
WORKDIR /src
