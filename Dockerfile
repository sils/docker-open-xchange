FROM sils1297/centos
MAINTAINER Lasse Schuirmann lasse.schuirmann@gmail.com

ADD ox.repo  /etc/yum.repos.d/ox.repo
RUN yum update -y
RUN yum install mysql-server open-xchange open-xchange-authentication-database open-xchange-grizzly \
  open-xchange-admin open-xchange-appsuite \
  open-xchange-appsuite-backend open-xchange-appsuite-manifest -y
RUN yum install mariadb-server -y

# TODO

ADD startup.sh /startup.sh
CMD /startup.sh
