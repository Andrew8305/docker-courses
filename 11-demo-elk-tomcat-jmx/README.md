## Docker ELK with Tomcat and JMX connection demo

This demo uses Docker Compose to build the following stack:

- 1 ELK container built with JMX Plugin
- 1 Tomcat container with RMI listen enabled

Please, custom the docker-compose.yml with your Docker host IP:

**-Djava.rmi.server.hostname=192.168.99.100**

You can find all configuration files for each app in the **conf** folder

Here are some Kibana searches samples:

- metric_path="tomcat_jvm.Memory.HeapMemoryUsage.used"
- metric_path="tomcat_jvm.Memory.HeapMemoryUsage.max"
- metric_path="tomcat_jvm.Memory.HeapMemoryUsage.init"
- metric_path="tomcat_jvm.Memory.HeapMemoryUsage.commited"