#设置继承镜像
FROM registry.aliyuncs.com/zhaosiwen_registry/ssh:v1.0

#提供一些作者的信息
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#更新apt缓存
RUN apt-get update

#安装Python环境
RUN apt-get --no-install-recommends install -y python-setuptools build-essential python-dev libpq-dev ca-certificates

#安装pip
RUN easy_install pip

#安装pip3
RUN apt-get install python3-pip
