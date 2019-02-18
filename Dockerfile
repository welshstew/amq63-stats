FROM registry.access.redhat.com/jboss-amq-6/amq63-openshift:latest

ADD promconfig.yml /opt/amq/conf/promconfig.yml

ENV JOLOKIA_AGENT_URL=https://maven.repository.redhat.com/ga/io/prometheus/jmx/jmx_prometheus_javaagent/0.3.1.redhat-00001/jmx_prometheus_javaagent-0.3.1.redhat-00001.jar
ENV ACTIVEMQ_OPTS="-javaagent:jmx_prometheus_javaagent-0.3.1.redhat-00001.jar=9779:/opt/amq/conf/promconfig.yml"
RUN curl -L $JOLOKIA_AGENT_URL -o /opt/amq/lib/jmx_prometheus_javaagent-0.3.1.redhat-00001.jar