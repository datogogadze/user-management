./mvnw clean package -DskipTests
docker-compose stop user-management
echo y | docker-compose rm user-management
docker rmi user-management
docker-compose up --build user-management