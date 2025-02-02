
FROM ubuntu

RUN apt update && apt install ssh sudo -y

RUN adduser iti

RUN echo "iti:123" | chpasswd

RUN usermod -aG sudo iti 

ENTRYPOINT service ssh start && bash

#ansible all -i 172.17.0.2, --private-key /home/yousra/ubuntu_doc/keys/key.pub -u iti -m ping 

#172.17.0.2