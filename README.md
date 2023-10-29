# user-management

DB and spring boot app can be started with "docker compose up -d".

# Restart DB:
    docker-compose stop user-management-db
    docker-compose up -d --build user-management-db

# Restart APP:
    Application container can be reloaded with ./deploy.sh (might need chmod +x deploy.sh)

    ./mvnw clean package -DskipTests
    docker-compose stop user-management
    echo y | docker-compose rm user-management
    docker rmi user-management
    docker-compose up --build user-management


For docker to work .env-docker file is needed.