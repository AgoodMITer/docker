FROM centos:6.8
# 维护者信息
MAINTAINER hylexus "hylexus@163.com"
# 将Dockerfile上下文中的nginx.repo复制到容器中的yum源位置
COPY ./nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum makecache
# 安装nginx
RUN yum install -y nginx
# 修改nginx首页信息
RUN echo "home page of container niginx server" > /usr/share/nginx/html/index.html
# 暴露80端口
EXPOSE 80