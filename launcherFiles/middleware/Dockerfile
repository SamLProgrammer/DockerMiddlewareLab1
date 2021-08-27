# FROM debian:bullseye
# RUN apt-get update
# RUN apt-get upgrade
# WORKDIR /home/debian
# COPY ./ /home/debian
# RUN apt install curl -y
# RUN apt-get install git-core -y
# RUN apt install nodejs npm -y
# RUN git init
# RUN git clone --branch another https://github.com/SamLProgrammer/DockerMiddlewareLab1.git
# RUN pwd
# WORKDIR /home/debian/DockerMiddlewareLab1
# RUN npm install
# RUN chmod +x pinger.sh
# CMD ["node", "index.js"]

FROM node
ENV TZ=America/Bogota
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
WORKDIR /home/debian
COPY ./ /home/debian
RUN git init
RUN git clone --branch another https://github.com/SamLProgrammer/DockerMiddlewareLab1.git
WORKDIR /home/debian/DockerMiddlewareLab1
RUN chmod +x pinger.sh
RUN npm install
CMD ["node", "index.js"]