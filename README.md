# Groovy - README

## Project Description
**Groovy** is an e-commerce application designed as a project to demonstrate the integration of various backend technologies, including Spring Boot, REST APIs, caching, schedulers, and more. The theme is centered around a groovy 70s vibe for music and products.

## Requirements
To run the application, ensure you have the following prerequisites:

- **Java 17** or higher
- **Maven** or **Gradle** build tool
- **MariaDB/MySQL Database**
- **Node.js** (for the React frontend)
- **API Keys**:
  - OpenAI API Key
  - Last.fm API Key

## Features
### Core Features

| Requirement                              | Status          | Notes                                                                   |
|:----------------------------------------:|:---------------:|:------------------------------------------------------------------------|
| Minimum 5 Entities with Relationships    | ✅ Fulfilled     | Entities: `CustomerOrder`, `OrderItem`, `Product`, `User`, `TopChart`. |
| Spring Data Repositories                 | ✅ Fulfilled     | Implemented for all entities.                                          |
| REST Controllers                         | ✅ Fulfilled     | Controllers for `Product`, `User`, `Order`, and more.                  |
| Multi-Module Project                     | ✅ Fulfilled     | Modules for Service, API, and DTOs.                                    |
| Database Updates from External API       | ✅ Fulfilled     | Integrated with Last.fm API using a scheduled task.                    |
| Three-Layer Architecture                 | ✅ Fulfilled     | Layers for Controllers, Services, and Repositories.                    |
| Use of MapStruct                         | ✅ Fulfilled     | DTO mapping via MapStruct.                                             |
| Database Connection                      | ✅ Fulfilled     | MariaDB configuration included.                                        |
| Derived Query Methods                    | ✅ Fulfilled     | Example: `findByEmail` in UserRepo.                                    |
| Communication with External Service      | ✅ Fulfilled     | Last.fm API and OpenAI API                                             |
| At Least 10 Endpoints                    | ✅ Fulfilled     | Multiple REST endpoints for all controllers.                           |

---

### Additional Features

| Feature                                  | Status          | Notes                                                                  |
|:----------------------------------------:|:---------------:|:------------------------------------------------------------------------|
| Spring Cache                             | ✅ Fulfilled     | Implemented using Caffeine Cache.                                      |
| Logging to File                          | ✅ Fulfilled     | Logs saved to `ecomshop.log` in the `/logs` folder.                    |
| Frontend (React)                         | ✅ Fulfilled     | React-based frontend for dynamic interaction.                          |
| Spring Security                          | ✅ Fulfilled     | Basic Spring Security configuration implemented.                       |
| Spring Schedulers                        | ✅ Fulfilled     | Fetches top tracks from Last.fm hourly.                                |

## Instructions to Run the Application

### Backend Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/OKarpacz/groovy.git
   cd groovy
   ```
2. Connect to Docker  

3. Change the `application.properties` file located in `src/main/resources/`:
   ```bash
   # Aplikacja
   spring.application.name=EcomShop

   # MariaDB Konfiguracja
   spring.datasource.url=jdbc:mariadb://localhost:3306/EcomShop
   spring.datasource.username=exampleUser
   spring.datasource.password=examplePassword123
   spring.datasource.driver-class-name=org.mariadb.jdbc.Driver

   # OpenAI API
   openai.api.key=sk-example-key1234567890abcdefghijklmnopqrstuv
   openai.api.url=https://api.openai.com/v1/chat/completions

   # LastFM API
   lastfm.api.key=example_lastfm_api_key123456
   lastfm.base.url=http://ws.audioscrobbler.com/2.0/

   # Hibernate / JPA Konfiguracja
   spring.jpa.database-platform=org.hibernate.dialect.MariaDBDialect
   spring.jpa.hibernate.ddl-auto=update
   spring.jpa.show-sql=true
   spring.jpa.properties.hibernate.format_sql=true

   # Generowanie skryptów SQL (Tworzenie i usuwanie)
   spring.jpa.properties.javax.persistence.schema-generation.scripts.action=create-drop
   spring.jpa.properties.javax.persistence.schema-generation.scripts.create-target=create.sql
   spring.jpa.properties.javax.persistence.schema-generation.scripts.create-source=metadata
   spring.jpa.properties.javax.persistence.schema-generation.scripts.drop-target=drop.sql
   spring.jpa.properties.javax.persistence.schema-generation.scripts.drop-source=metadata

   spring.jpa.properties.hibernate.hbm2ddl.import_files=import.sql

   # Scheduler
   spring.task.scheduling.pool.size=5

   # Logowanie plików
   logging.file.name=logs/ecomshop.log
   logging.level.org.springframework=INFO
   logging.level.com.example=DEBUG

   # Caffeine Cache
   spring.cache.type=caffeine
   spring.cache.caffeine.spec=maximumSize=100,expireAfterAccess=5m
   ```

5. Build and run the backend application, Backend will run at `https://localhost:8080`
   
### Frontend Setup
1. Connect to the file with frontend:
   ```bash
   cd ecomshop-frontend
   ```

2. Install dependecies:
   ```bash
   npm install
   ```

3. Run the project:
   ```bash
   npm start
   ```







