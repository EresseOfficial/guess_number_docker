# Use the official gcc image as a base image. This image includes the GCC compilers needed to compile C programs.
# Why this command: This line defines the base image for the container. By choosing gcc:latest, we are using the latest version of the GCC image, which contains all the tools needed to compile C programs.
FROM gcc:latest

# Set the working directory in the container. This directory is used to store the files needed to run our application.
# Why this command: This instruction creates (if necessary) and sets the working directory in the container. This is the directory where our source code and other files will be placed and from which commands will be executed.
WORKDIR /usr/src/app

# Copy the game source file (guess_number.c) into the Docker image. This file will be copied into the working directory defined above.
# Why this command: This line copies the source file from our local system to the working directory in the Docker container. The . at the end indicates the destination, which is the current working directory in the container.
COPY guess_number.c .

# Compile the C source file using the GCC compiler. This command creates an executable named 'guess_number' from our source file.
# Why this command: This instruction uses GCC to compile the source file guess_number.c into an executable named guess_number. This is the step where our game is actually compiled inside the container.
RUN gcc -o guess_number guess_number.c

# Set the default command to run when the container is launched. Here, it runs the 'guess_number' application.
# Why this command: This instruction specifies the command to run by default when the container is started. In this case, it runs the application we compiled, thus starting our game.
CMD ["./guess_number"]
