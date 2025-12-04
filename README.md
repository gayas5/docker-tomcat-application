# docker-tomcat-application
project structure
tomcat-docker-app/
│
├── docker-compose.yml
│
├── tomcat/
│   ├── Dockerfile
│   └── context.xml
│
├── app/
│   ├── Dockerfile (optional if building WAR)
│   └── sample.war
│
├── mysql/
│   └── init.sql
│
└── volumes/
    ├── mysql-data/
    └── tomcat-logs/

