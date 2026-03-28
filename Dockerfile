# fisrt step : chercher une image deja utilisée dans dockerHub
FROM eclipse-temurin:17-jdk-jammy

# second step : choisir l'emplacement de travail
WORKDIR /app

# third step : utiliser le jar situé dans le conteneur
COPY target/springdocker-0.0.1-SNAPSHOT.jar app.jar

# forth step : pointer sur le port
EXPOSE 8081

# last step : executer l'app
ENTRYPOINT ["java", "-jar", "app.jar"]