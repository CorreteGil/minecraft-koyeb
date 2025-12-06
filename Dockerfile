FROM eclipse-temurin:17-jre-alpine

WORKDIR /server

# Download paper server (1.21.1)
ADD https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/100/downloads/paper-1.21.1-100.jar server.jar

# Accept EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xms512M", "-Xmx1000M", "-jar", "server.jar", "--nogui"]
