# Retrieve Elasticsearch image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1
# RUN yum install -y wget java-1.8.0-openjdk nmap curl net-tools

# Retrieve argument from docker-compose file
ARG install_path

# Download and install Java
# Download and unzip JProfiler
RUN yum install -y wget java
RUN wget http://download-keycdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_2.tar.gz -P /tmp
RUN tar -xzf /tmp/jprofiler_linux_11_1_2.tar.gz -C $install_path

# Increase virtual memory so we can run multiple containers at once
RUN sudo sysctl -w vm.max_map_count=262144

