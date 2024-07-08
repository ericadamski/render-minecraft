FROM openjdk:21-jdk-slim

WORKDIR /app

COPY . /app

EXPOSE 25565

RUN apt-get update && apt-get install -y wget && wget https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar -O minecraft_server.jar

RUN echo "eula=true" > eula.txt

CMD ["java", "-Xmx2048M", "-Xms2048M", "-jar", "minecraft_server.jar", "nogui"]
