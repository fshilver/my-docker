FROM centos:6.7

ENV REPO 110.35.173.28
RUN yum install -y vim tar && yum clean all

# Install Java
RUN rpm -ivh http://${REPO}/rpms/jdk-7u60-linux-x64.rpm

# Install Tomcat
ENV CATALINA_HOME /castis/bin/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ENV TOMCAT_VERSION 6.0.39
RUN mkdir -p /castis/bin \
    && curl -SL http://${REPO}/tar/apache-tomcat-${TOMCAT_VERSION}.tar.gz | tar -xz -C /castis/bin \
    && ln -s apache-tomcat-${TOMCAT_VERSION} /castis/bin/tomcat


# Install ReportCollector
ARG VERSION
ADD http://${REPO}/reportCollector.war/reportCollector.war-${VERSION} /castis/bin/tomcat/webapps/
RUN ln -sf reportCollector.war-${VERSION} /castis/bin/tomcat/webapps/reportCollector.war
VOLUME ${CATALINA_HOME}/conf/reportCollector/ /castis/log/reportcollector_log/ /DATA/report/

EXPOSE 8080

ENTRYPOINT ["catalina.sh", "run"]
