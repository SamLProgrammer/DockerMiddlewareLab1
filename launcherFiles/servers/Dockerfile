FROM debian:bullseye
RUN apt-get update
RUN apt-get upgrade
WORKDIR /home/debian
COPY ./ /home/debian
RUN apt-get install git-core -y
RUN apt install nodejs npm -y
RUN git init
RUN git clone --branch master https://github.com/SamLProgrammer/LAB1SD.git
WORKDIR /home/debian/LAB1SD
RUN npm install
CMD ["node", "index.js"]