FROM centos

MAINTAINER extrastores


RUN yum install vim -y \
    && yum install cifs-utils -y \
    && yum install epel-release -y \
    && yum install nginx -y 


COPY share.sh /bin/share

COPY nginx.conf /etc/nginx/

RUN chmod +x /bin/share

CMD ["nginx","-g","daemon off;"]


