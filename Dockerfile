#INSTRUCTION TO PACKAGE OUR APPLICATION
#This is the Base Image
# TO GET MORE BASE IMAGE / hub.docker.com

FROM node:alpine
#alpine is a linux distro

COPY . /app
# COPY ALL THE CONTENTS IN THE CURRENT DIRECTORY IN TO THE /app inside the image
# i.e the image would create a dir  called (app) where our project will be saved

WORKDIR /app
## This is to state our working directory

CMD ["node", "app.js"]
## This is the commandline to execute our project

##Then go to your project termial and run
## docker build -t commit-name e.g (hello-docker) . to package our image / the . is to tell where docker can find a dockerfile, and the dot is stating the currect dir


## TO LIST ALL THE IMAGES
# - docker images or docker image ls


## TO RUN OUR DOCKER IMAGE
# - We can go on any machine where docker is installed and run
# - docker run (image_name)

## TO PULL & RUN A DOCKER IMAGE 
# - docker pull dockerUsername/imageName