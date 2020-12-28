FROM julia:latest

WORKDIR /usr/src/hello-world
COPY ./src .

VOLUME ["/usr/src/hello-world"]

CMD julia HelloWorld.jl 