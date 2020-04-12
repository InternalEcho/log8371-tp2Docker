# Retrieve Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1
# RUN yum install -y wget java-1.8.0-openjdk nmap curl net-tools

# Retrieve argument from docker-compose file
ARG install_path

# wget http://download-keycdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_2.tar.gz -P /tmp
# tar -xzf /tmp/jprofiler_linux_11_1_2.tar.gz -C /usr/local

# Download and install Java
# Download and unzip JProfiler
RUN yum install -y wget java
RUN wget http://download-keycdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_2.tar.gz -P /tmp
RUN tar -xzf /tmp/jprofiler_linux_11_1_2.tar.gz -C $install_path
# RUN rm /tmp/jprofiler_linux_11_1_2.tar.gz

# Configurer le path de l'agent JProfiler
# ENV JPAGENT_PATH="-agentpath:/usr/local/jprofiler8/bin/linux-x64/libjprofilerti.so=port=8849"
# USER elasticsearch

# Exposer les ports de l'agent JProfiler et d'Elasticseach
# EXPOSE 8849 9200