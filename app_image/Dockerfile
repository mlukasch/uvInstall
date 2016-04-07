FROM tomcat:7.0

# Install Java:
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list && \
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
apt-get update --fix-missing && \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true |  /usr/bin/debconf-set-selections && \ 
apt-get -y install oracle-java7-installer && \
apt-get -y install oracle-java7-set-default
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

# Install language pack:
RUN apt-get update && \
apt-get -y install aptitude && \
aptitude install locales && \
sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen && locale-gen && \
locale-gen "en_US.UTF-8"
ENV LC_ALL=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8

# Install maven git
RUN apt-get -y install maven git 
RUN apt-get -y install postgresql-client

#ENV CATALINA_BASE /var/lib/tomcat7
#ENV CATALINA_HOME /usr/share/tomcat7

COPY config/ /config/

CMD /config/init.sh
