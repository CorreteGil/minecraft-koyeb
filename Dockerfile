FROM ubuntu:22.04

WORKDIR /server

RUN apt-get update && apt-get install -y openjdk-17-jre-headless wget curl && rm -rf /var/lib/apt/lists/*

# Descarga PaperMC 1.21.1 (o cambiá a la versión que quieras)
RUN wget https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/100/downloads/paper-1.21.1-100.jar -O server.jar

# Aceptar EULA
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xmx1G", "-Xms512M", "-jar", "server.jar", "--nogui"]
