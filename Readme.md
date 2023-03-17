# How-to
# Build Docker
docker build -f Dockerfile -t nancy/devel .
# Run Docker
docker run -it --rm --user nancy -p 8888:8888 --volume ${HOME}/workdir:/home/nancy/workdir --gpus all nancy/devel bash -l
