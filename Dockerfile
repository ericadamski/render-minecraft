FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . /app

EXPOSE 25565

RUN apt-get update && apt-get install -y wget && wget https://launcher.mojang.com/v1/objects/1.21/server.jar -O minecraft_server.jar

RUN echo "eula=true" > eula.txt

CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "minecraft_server.jar", "nogui"]
