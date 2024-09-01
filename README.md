Create a Simple Docker File and Add Following line in it. The file name should be "Dockerfile".
# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the static website files to the Nginx default directory
COPY . /usr/share/nginx/html

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

Now clone the project in the machine where the docker is installed.
Navigate to the Project Directory.
Now, we need to create Docker Image from the above Dockerfile.
Run the following command to create docker image.
# docker build -t eflyer_image:latest .

This will create Docker Image in the machine you can check the Image by following command.
# sudo docker images
You will get the following output:
root@DESKTOP-QT9BDOB:/mnt/c/Users/T490/DockerProjects/EFlyer-Docker-Project# docker images
**REPOSITORY     TAG       IMAGE ID       CREATED         SIZE
eflyer_image   latest    bfea52d92320   7 minutes ago   55.2MB
nginx          alpine    0f0eda053dc5   2 weeks ago     43.3MB
mysql          latest    a82a8f162e18   5 weeks ago     586MB
oxer-image     1.0       df6775e3d0b8   7 weeks ago     191MB
nginx          latest    fffffc90d343   2 months ago    188MB**

Now you need to run a container through the Image.

Run the following command:
# docker run -d -P --name eflyer_website bfea52d92320
If you get this output that means your container has successfully started:
# 934e53642202b5a6441a35f5ed7c125d18c202ede40c98edf36afa4a6892e9ce

Check the running container by following command:
# sudo docker ps

You will get the following output:

**CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                                     NAMES
934e53642202   bfea52d92320   "/docker-entrypoint.…"   5 seconds ago   Up 4 seconds   0.0.0.0:32768->80/tcp, :::32768->80/tcp   eflyer_website**

Open the website to navigate to the deployed website:
# localhost:32768

**Thanks!!!!!!!!!!!!!!!!!!!**
