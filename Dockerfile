FROM centos:6.8
# ά������Ϣ
MAINTAINER hylexus "hylexus@163.com"
# ��Dockerfile�������е�nginx.repo���Ƶ������е�yumԴλ��
COPY ./nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum makecache
# ��װnginx
RUN yum install -y nginx
# �޸�nginx��ҳ��Ϣ
RUN echo "home page of container niginx server" > /usr/share/nginx/html/index.html
# ��¶80�˿�
EXPOSE 80