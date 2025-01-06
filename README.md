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
2. Connect to Docker  
3. Change the `application.properties` file located in `src/main/resources/`  
4. Build and run the backend application  
   Backend will run at `https://localhost:8080`
   
### Frontend Setup
1.Navigate to the frontend package:
```bash
cd ecomshop-frontend
```
2.Install dependecies:
```bash
npm install
```
3.Run the project:
```bash
npm start
```






