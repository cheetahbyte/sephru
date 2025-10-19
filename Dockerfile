FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl git jq
RUN useradd -m runner && su - runner
WORKDIR /home/runner
RUN curl -O -L https://github.com/actions/runner/releases/download/v2.321.0/actions-runner-linux-x64-2.321.0.tar.gz \
 && tar xzf ./actions-runner-linux-x64-2.321.0.tar.gz

COPY start.sh .
RUN chmod +x start.sh
USER runner
ENTRYPOINT ["./start.sh"]
