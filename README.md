```
Лаб 5. Docker basics
```

```
Создать образ и запустить контейнер:

- внутри которого будет работать веб-сервер Nginx,

- отдающий статическую html страницу с приветствием с порта,

- для доступа снаружи к nginx по сети пробросить в контейнер порт 54321

- команду запуска контейнера оформить шелл-скриптом

Дополнительное задание:

Сгенерировать SSL самоподписанный сертификат
Запускать nginx в контейнере с HTTPS протоколом, с сертификатом
Сертификат пробросить в контейнер через Volume Mapping
Сделать скрипт обновления (пересоздания сертификата), который будет давать внутрь докера команду nginx на перечитывание сертификата (reload)
Результат работы выложить в отдельную репо на Github и прикрепить ссылку в качестве ответа.

```

```
Проверка
```

```
start.sh
```

```
user@ubuntudevops1:~/devops_lab7$ ./start.sh 
nginx2025
nginx2025
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

unable to prepare context: path "./nginx" not found
77f62047f794ff7138ae072d16b16c113da1ceb78d51aa1b41bc9e50e9b7a7ec
CONTAINER ID   IMAGE          COMMAND                  CREATED             STATUS                         PORTS                                                                                    NAMES
77f62047f794   nginx-devops   "/docker-entrypoint.…"   1 second ago        Up Less than a second          0.0.0.0:54321->80/tcp, [::]:54321->80/tcp, 0.0.0.0:54322->443/tcp, [::]:54322->443/tcp   nginx2025
bf90a3212d9f   hello-world    "/hello"                 About an hour ago   Exited (0) About an hour ago                                                                                            charming_sammet
curl: (56) Recv failure: Connection reset by peer
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: /etc/nginx/conf.d/default.conf differs from the packaged version
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2025/06/29 15:30:13 [notice] 1#1: using the "epoll" event method
2025/06/29 15:30:13 [notice] 1#1: nginx/1.29.0
2025/06/29 15:30:13 [notice] 1#1: built by gcc 12.2.0 (Debian 12.2.0-14+deb12u1) 
2025/06/29 15:30:13 [notice] 1#1: OS: Linux 6.8.0-60-generic
2025/06/29 15:30:13 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 1048576:1048576
2025/06/29 15:30:13 [notice] 1#1: start worker processes
2025/06/29 15:30:13 [notice] 1#1: start worker process 28

```

```
updatessl.sh

```

```
user@ubuntudevops1:~/devops_lab7$ ./updatessl.sh 
.......+.+..+.............+.........+...+..+................+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*........+...+..+............+.+..+.+......+...............+...+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*.....+..............+.+......+......+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
.........+.+...+..+......+...+......+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*.........+......+..........+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*..+...+........+......+...+...+....+...+......+......+...........+...+.+.....+....+......+.........+...........+...+..........+..+.+...+...........+....+......+...+..+...+.+..+....+.........+.........+..................+..+...+...+.+........+......+......+.+........+....+............+...+..+...+...+..........+..+.+......+......+........+......+......+...............+.......+........+.......+..+...+.......+.....+.........+.+...+.....+...+.......+...+...+...............+..+.........+...+...+..........+..............+.+.........+.......................+.+.....+......+.........+...................+..+.+..+...+...+....+...........+...................+......+..+.......+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-----
2025/06/29 15:32:58 [notice] 29#29: signal process started

```
