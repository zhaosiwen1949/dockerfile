#���ü̳о���
FROM registry.aliyuncs.com/zhaosiwen_registry/python:3

#�ṩһЩ���ߵ���Ϣ
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#��װflask
pip install flask

#����5000�˿�
EXPOSE 5000

#�������ݾ�/src��
VOLUME ["/src"]

#���롰/src��
WORKDIR /src
