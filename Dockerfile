#���ü̳о���
FROM registry.aliyuncs.com/zhaosiwen_registry/flask:origin

#�ṩһЩ���ߵ���Ϣ
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#����apt-get����
RUN apt-get update

#��װrequirements.txt�е�������
ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

#����5000�˿�
EXPOSE 5000

#�������ݾ�/src��
VOLUME ["/src"]

#���롰/src��
WORKDIR /src
