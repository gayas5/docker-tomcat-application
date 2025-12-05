
# Tomcat + Java 17 + JSP + MySQL + Docker + Jenkins CI/CD

A complete production-ready deployment

This project demonstrates how to deploy a **Java JSP web application** on **Tomcat 10**, backed by **MySQL**, containerized using **Docker**, orchestrated with **Docker Compose**, and deployed automatically through a **Jenkins CI/CD pipeline**.

---

## 🚀 Features

* Java 17 application using JSP (Jakarta EE)
* Tomcat 10.1.x server with JSP support
* MySQL database integration with JDBC driver
* Dockerized application with custom Tomcat image
* Docker Compose for multi-container deployment
* Jenkins pipeline for automated build → push → deploy
* Versioned images pushed to Docker Hub
* Auto-restart of container on deployment

---

## 📁 Project Structure

```
docker-tomcat-application/
│
├── app/
│   └── sample/
│        ├── index.jsp
│        └── WEB-INF/
│            └── web.xml
│
├── tomcat/
│   ├── Dockerfile
│   └── context.xml
│
├── mysql/
│   └── init.sql
│
├── docker-compose.yaml
└── README.md
```

---

## 🐳 Dockerfile Overview

Located at: `tomcat/Dockerfile`

* Installs Java 17
* Downloads Tomcat 10.1.x
* Installs MySQL JDBC driver
* Copies JSP application into Tomcat
* Runs Tomcat on port 8080

---

## 🐳 Docker Compose Overview

This project includes a `docker-compose.yaml` used to start:

* `mysql` container (database)
* `tomcat-app` container (Java application)

### Start environment:

```bash
docker-compose up --build -d
```

### Stop environment:

```bash
docker-compose down
```

---

## 🔧 Jenkins Pipeline (CI/CD)

This project includes a Jenkins pipeline that:

1. Pulls source code from GitHub
2. Builds a Docker image using `tomcat/Dockerfile`
3. Logs into Docker Hub
4. Pushes the image with both version and `latest` tags
5. Stops the previous container
6. Runs the new version on the server

## 🧪 Testing the Application

After deployment, access the application:

```
http://<SERVER-IP>:8081/sample/
```

You should see the JSP output.

---

## 🐛 Troubleshooting

### 1. **404 Not Found**

* Ensure `index.jsp` exists inside:
  `/usr/local/tomcat/webapps/sample`
* Ensure correct Tomcat version (10.x, not 11.x)
* Ensure `web.xml` is valid Jakarta EE format

### 2. **Jenkins build error: Dockerfile not found**

Use:

```bash
docker build -f tomcat/Dockerfile .
```

### 3. **MySQL connection failure**

* JDBC driver must exist in `/usr/local/tomcat/lib`
* Confirm credentials in `context.xml`
* Ensure database created via `init.sql`

---

## 📦 DockerHub Images

Images pushed:

```
mohdparvez23/tomcat_app:<BUILD_NUMBER>
mohdparvez23/tomcat_app:latest
```

---

## 🙌 Author

**Mohd Parvez**


---

