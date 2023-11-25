# Guess Number Game

This project contains a simple C program to guess a random number, which is containerized using Docker.

## Prerequisites

- Docker installed on your system. You can download and install Docker from [Docker's official website](https://www.docker.com/products/docker-desktop).
- Basic understanding of Docker commands and concepts.
- Git for cloning the repository.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Cloning the Repository 
Navigate to the directory where you want to clone the project and run:

```shell
git clone <repository-url>
```
Replace `<repository-url>` with the URL of the repository. You can copy the URL from the **Code** button, then the **clone** tab on the repository page.

### Building the Docker Image
Navigate to the project directory and run the following command to build the Docker image:

```shell
docker build -t guess_number .
```
This command builds a Docker image named `guess_number` from the Dockerfile in the current directory (`.`). The `-t` flag is used to tag the image with a name.

### Running the Docker Container
To run the container with a custom name, execute: 

```shell
docker run --name my_guess_number -it guess_number
```

Here, `my_guess_number` is the name you give to your container. The `-it` flag attaches an interactive terminal to the container. You can change the name of the container to whatever you want.

### Re-running the Docker Container
If you want to start the same container again, use:
    
```shell
docker start -ai my_guess_number
```

The `-ai` flags attach your terminal interactively to the container.

### Stopping the Docker Container
- The container will automatically stop once you guess the correct number.
- If the container enters an infinite loop, stop it using: 

```shell
docker stop my_guess_number
```

or, if that doesn't work,

```shell
docker kill my_guess_number
```

The kill command will stop the container immediately.

If neither command works, restart Docker:
- On Linux:
  ```
  sudo systemctl restart docker
  ```
- On Windows or Mac: Restart Docker Desktop from its interface.
- If necessary, use Task Manager (Windows) or Activity Monitor (Mac) to find and stop any lingering Docker processes.

## Why These Commands?

- `docker build` creates a Docker image from a Dockerfile, packaging your application with all its dependencies.
- `docker run` creates and starts a new container instance from an image.
- `docker start` is used to start an existing stopped container.
- `docker stop` and `docker kill` are used to stop a running container. `kill` is a forceful stop command used when `stop` is unresponsive.

Enjoy playing the Guess Number game in Docker!