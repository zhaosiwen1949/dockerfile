#���ü̳о���
FROM ubuntu:14.04

#�ṩһЩ���ߵ���Ϣ
MAINTAINER from registry.mirrors.aliyuncs.com by zhaosiwen_registry (caoyasong1949@163.com)

#����apt����
RUN apt-get update

#��װssh����
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh

#ȡ��pam����
RUN sed -ri 's/session      required    pam_loginuid.so/#session    required    pam_loginuid.so/g' /etc/pam.d/sshd

#���������ļ�����Ӧλ�ã�������ű���ִ��Ȩ��
ADD authorized_keys /root/.ssh/authorized_keys
ADD run.sh /run.sh
run chmod 755 /run.sh

#���Ŷ˿�
EXPOSE 22

#��������������
CMD ["/run.sh"]
