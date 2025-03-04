# Utilisation d'une image de base avec Java préinstallé
FROM openjdk:17-jdk-slim

# Définition d'un argument pour le fichier JAR
ARG JAR_FILE

# Création du répertoire de l'application
WORKDIR /app

# Copie du fichier JAR dans le conteneur
COPY ${JAR_FILE} app.jar

# Exposition du port de l'application
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
