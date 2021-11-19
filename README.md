# Mysql Configuration
### mysql/env/mysql.env
```
MYSQL_ROOT_PASSWORD     # your root user password
MYSQL_DATABASE          # nacos database
```

# Redis Configuration(redis.conf)
```
requirepass password    # your redis password
```

## 注释 bind 127.0.0.1
```
bind 127.0.0.1          # bind 127.0.0.1
```

# Nacos Configuration

### nacos/env/nacos.env
```
MYSQL_SERVICE_DB_NAME    # nacos database
MYSQL_SERVICE_USER       # mysql username
MYSQL_SERVICE_PASSWORD   # mysql password
MYSQL_SERVICE_HOST       # mysql host  (link: docker-compose service name)
```

### 启动服务
```shell
chmod +x docker-setup.sh && ./docker-setup.sh
```

### 容器日志
```shell
docker-compose logs -f
```

### 查看容器
```shell
docker-compose ps
```


### 停止容器

```shell
docker-compose down
```
