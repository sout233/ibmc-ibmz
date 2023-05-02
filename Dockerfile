FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jdk curl 
RUN mkdir minecraft 
RUN curl [MC_SERVER_CORE_URL] --output minecraft/minecraft_server.jar
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD java -Xms1024m -Xmx1024m -jar minecraft/minecraft_server.jar --nogui