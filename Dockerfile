FROM registry.access.redhat.com/jboss-amq-6/amq63-openshift:latest

ADD promconfig.yml /opt/amq/conf/promconfig.yml

ENV JOLOKIA_AGENT_URL=http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.11.0/jmx_prometheus_javaagent-0.11.0.jar
ENV ACTIVEMQ_OPTS="-javaagent:/opt/amq/lib/jmx_prometheus_javaagent.jar=9779:/opt/amq/conf/promconfig.yml"
RUN curl -L $JOLOKIA_AGENT_URL -o /opt/amq/lib/jmx_prometheus_javaagent.jar