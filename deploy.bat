@echo off

echo "Deploying application into Tomcat"

curl -v -u rafi:Dear@786 -T **/*.war "http://localhost:2020/manager/text/deploy?path=/sample&update=true"