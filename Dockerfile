#��һ�б���ָ����ڵĻ�������
From ubutu

#ά������Ϣ
MAINTAINER docker_user  docker_user@mail.com

#����Ĳ���ָ��
apt/sourcelist.list

RUN apt-get update && apt-get install -y ngnix 
RUN echo "\ndaemon off;">>/etc/ngnix/nignix.conf

#��������ʱִ��ָ��
CMD /usr/sbin/ngnix