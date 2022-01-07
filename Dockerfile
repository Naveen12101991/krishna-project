FROM centos:latest
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/zombiz.zip /var/www/html 
WORKDIR /var/www/html
RUN unzip zombiz.zip 
RUN rm -rf zombiz.zip &&\ 
    cp -rf zombiz/*  . &&\
    rm -rf zombiz
EXPOSE 80
CMD ["/usr/sbin/httpd" , "-D" ,"FOREGROUND" ]
