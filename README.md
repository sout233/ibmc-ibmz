# IBMC-IBMZ

### [English](./README_EN.md) | 简体中文

一个在s390x架构的服务器上部署Minecraft Server的解决方案

## 使用方式

将 `Dockerfile` 克隆到本地

```dockerfile
RUN curl [MC_SERVER_CORE_URL] --output minecraft/minecraft_server.jar
```

**将 [MC_SERVER_CORE_URL] 修改为Minecraft Server核心URL。**

使用如下命令build image：

```bash
docker build -t soutmsc:390 .
```

运行：
```bash
docker run -p 25565:25565 soutmsc:390
```

## Tips

### 关闭正版验证

若要关闭正版验证，可以先进入容器中：
```
docker exec –it [CONTAINER ID] /bin/bash
```

修改目录下的`server.properties`，将`online-mode=true`改为`online-mode=false`

### 关于jdk

某些发行版（比如Ubuntu）的default-jdk版本很旧，你可能需要将Dockerfile中的`apt-get install -y default-jdk`更改安装为较新版本jdk的指令。
