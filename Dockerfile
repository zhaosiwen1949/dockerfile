#���ü̳о���
FROM registry.aliyuncs.com/zhaosiwen_registry/ssh:v1.0

#�ṩһЩ���ߵ���Ϣ
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#����apt����
RUN apt-get update

#��װPython����
RUN apt-get --no-install-recommends install -y python-setuptools build-essential python-dev libpq-dev ca-certificates

#��װpip
RUN easy_install pip

#��װpip3
RUN apt-get install python3-pip
