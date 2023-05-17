# Container image that runs your code
FROM ubuntu:latest
    
RUN apt update && apt install -y figlet

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

VOLUME /github/workspace/

WORKDIR /github/workspace/

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
