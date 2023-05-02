# IBMC-IBMZ

### English Readme | [简体中文](./README.md)

A Minecraft server that can runs on s390x

## Build&Run

Clone `Dockerfile`

```dockerfile
RUN curl [MC_SERVER_CORE_URL] --output minecraft/minecraft_server.jar
```

**Edit [MC_SERVER_CORE_URL] to Minecraft server download URL。**

Build image：

```bash
docker build -t soutmsc:390 .
```

Run：
```bash
docker run -p 25565:25565 soutmsc:390
```