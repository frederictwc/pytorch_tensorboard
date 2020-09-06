FROM lspvic/tensorboard-notebook

ARG SSL_KEYSTORE_PASSWORD
USER root

WORKDIR /workspace/src/
COPY . .
RUN apt-get -y update 
RUN apt-get -y install python3-pip 
RUN apt-get -y install nano
RUN sudo -H pip3 install -r requirements.txt