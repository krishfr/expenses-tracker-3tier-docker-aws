## Deploying an Expenses Tracker Web Application with Docker and MySQL
This project demonstrates deploying a 3-tier Expenses Tracker web application on AWS EC2 using Docker Compose.
The application is built with Spring Boot and uses embedded Apache Tomcat for request handling, while MySQL manages persistent expense data.

The focus of this project is containerized deployment, service orchestration, and real-world debugging rather than UI complexity.

## Tech Stack
Spring Boot
Apache Tomcat (embedded)
MySQL
Docker
Docker Compose
Maven
AWS EC2

## Architecture
1. Client accesses the application via browser
2. Request is handled by Spring Boot using embedded Tomcat
3. Business logic processes expense data
4. Application interacts with MySQL for persistence
5. All services run as Docker containers on an AWS EC2 instance

## Architecture diagram is available here:
docs/3-Tier expenses tracker architecture on AWS.png

## Project Structure
```bash
expenses-tracker-3tier-docker-aws/
├── .mvn/                     # Maven wrapper configuration
├── docs/
│   └── architecture.png      # 3-tier architecture diagram
├── proof/
│   ├── 01-compose-up.png     # Docker Compose startup proof
│   ├── 02-docker-ps.png      # Running containers proof
│   ├── 03-network-ls.png     # Docker network inspection
│   ├── 04-volume-ls.png      # Docker volume inspection
│   ├── 05-live-app.png       # Live application on EC2
│   └── demo.mp4              # Live application on EC2 (demo video linked in README)
├── src/
│   ├── main/                 # Spring Boot application source
│   └── test/                 # Test cases
├── docker-compose.yml        # Multi-container orchestration
├── Dockerfile                # Spring Boot application image
├── mvnw                      # Maven wrapper script (Linux/Mac)
├── mvnw.cmd                  # Maven wrapper script (Windows)
├── pom.xml                   # Maven project configuration
└── README.md                 # Project documentation
```
## Demo Video
Full deployment and working demo:
https://drive.google.com/file/d/1SntEY1P1CNW4SImHkVnpSbDWzKwy_zl_/view?usp=drive_link

## Requirements
Docker
Docker Compose
AWS EC2 instance or local Linux system

## Setup and Run
Clone the repository
```bash
git clone https://github.com/krishfr/expenses-tracker-3tier-docker-aws.git
cd expenses-tracker-3tier-docker-aws
```
## Build and start the application
```bash
docker compose up --build
```
## Stop the application
```bash
docker compose down
```

## What This Project Demonstrates
3-tier application architecture
Docker Compose based multi-container setup
Spring Boot application deployment
Embedded Apache Tomcat usage
MySQL database initialization and persistence
AWS EC2 deployment
Debugging Docker builds, containers, and database connectivity

## Proof of Work
Screenshots of Docker Compose startup, running containers, networks, and volumes are available in the proof folder
Live application screenshot and demo video included
Architecture diagram available in the docs folder

## Project Scope
This project uses Spring Boot with embedded Apache Tomcat, so no external reverse proxy is configured.
The application is intentionally simple to highlight backend deployment, containerization, and infrastructure workflows.

## Author
Krish Chaudhari
