ARG code_version="latest"
FROM ubuntu:$code_version
LABEL MAINTAINER raj@docker.com
# RUN runs shell commands when an image is built, not when container is created
RUN echo $code_version
ARG LICENSE_KEY="123-456"
ENV ORA_PORT=1521
RUN mkdir /code
COPY sample.sh /code/sample.sh
RUN chmod +x /code/sample.sh
WORKDIR /code
CMD sh /code/Sample.sh
