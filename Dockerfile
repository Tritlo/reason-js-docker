FROM node:9

RUN yarn global add bs-platform

RUN userdel node
RUN useradd -ms /bin/bash reason

USER reason
WORKDIR /home/reason

CMD yarn run start
