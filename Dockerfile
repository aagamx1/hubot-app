FROM node:6.10.0-alpine
MAINTAINER  Agam

WORKDIR /root
RUN npm install -g yo generator-hubot && addgroup -S agam && adduser -S -G agam agam

ENV HOME /home/agam

# variables needed by hubot scripts
#ADD env-vars.sh /home/devops_bot/.profile

USER agam
WORkDIR /home/agam

ADD --chown=agam:agam devops_bot/ /home/agam/devops_bot/
#RUN chown -R agam:agam /home/agam/devops_bot/

#CMD ["/home/devops_bot/bin/hubot"]

