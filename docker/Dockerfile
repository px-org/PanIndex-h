FROM heroku/heroku:20

RUN apt-get update
RUN apt-get install -y \
  curl \
  wget \
  git \
  build-essential \
  zip \
  jq
COPY ../*.sh /
ENTRYPOINT ["sh", "/configure.sh"]