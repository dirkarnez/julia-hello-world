docker build . -t=julia-hello-world:latest
docker run --rm -it -v "%~dp0src:/usr/src/hello-world" julia-hello-world:latest
pause

