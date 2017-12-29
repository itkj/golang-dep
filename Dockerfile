FROM golang:1.9.2

ENV DEP_VERSION v0.3.2

RUN apt-get update && apt-get -y install ruby && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -L -o dep https://github.com/golang/dep/releases/download/${DEP_VERSION}/dep-linux-amd64 && \
    chmod +x dep && \
	mv dep /usr/local/bin/
