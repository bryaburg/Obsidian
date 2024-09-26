
2024-08-29 11:20

Status:

Tags:

# Docker

Docker [DF](https://docs.docker.com/reference/cli/docker/system/df/) sees system stuff like memory usage and disk usage

docker ps -a See all containers that are made and there statuses

Docker images "See what images are on your system"

docker inspect "container to see detailed info of it"

docker pull "image of container'

docker run -it "interactive" --name="Name of container" mcr.microsoft.com/windows:ltsc2019 cmd "Open in CMD"

docker run -d "Detacthed" -p 8000:8000 "declare port to connect too"

docker run -it -v C:\Users\bburgess\:c:\host --name="servercore_ltsc2019" mcr.microsoft.com/windows/servercore:ltsc2019 cmd

-it "interactive"

-v C:\Users\bburgess\:c:\host "Share host file to C drive on container inside dirctory called host"

--name="Name of container"

mcr.microsoft.com/windows/servercore:ltsc2019 "image used"

cmd "Open in CMD"

docker build -t

- docker compose up - runs the compose.yaml that is in the current directory

Example Docker compose file
```Docker
services:

  windows:

    image: dockurr/windows

    container_name: 34.01.00-Studio5000-Web

    environment:

      VERSION: "win10"

    devices:

      - /dev/kvm

    cap_add:

      - NET_ADMIN

      - SYS_ADMIN

    ports:

      - 8006:8006

      - 3389:3389/tcp

      - 3389:3389/udp

    stop_grace_period: 2m

    volumes:

      - /mnt/c:/shared

  

volumes:

  docker_share:
```
# Reference
