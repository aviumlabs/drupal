# A Drupal Repo


This repo builds a Drupal docker image with a few additional utilities.

This image is based on the Drupal Alpine docker image.   


## Naming Convention


The naming convention is branched into **Standard** and **Extended** and is 
based on similar projects based on the Alpine Linux distribution, where 
`-alpine` is appended to the end of the tag.  


The **Standard** branch is based on the latest stable version of Drupal 
provided by the Drupal Alpine docker image.   

The **Extended** branch may either be based on the previous stable 
version of Drupal or the cutting edge version of Drupal.   


### Standard Naming Convention


    aviumlabs/drupal:<version | latest>-alpine
   
    aviumlabs/drupal:<version | latest>-bookworm


Where version is either numeric based on the Drupal version or the literal 
'latest'.  


### Extended Naming Convention


    aviumlabs/drupal:<version | latest>-drupal<version>-alpine

    aviumlabs/drupal:<version | latest>-drupal<version>-bookworm


## Build


### Latest


The image defaults to building the latest version of Drupal.


    $ docker build --no-cache -t aviumlabs/drupal:latest-alpine .

    $ docker build --no-cache -t aviumlabs/drupal:latest-bookworm .


Update the base image:


    $ docker build --pull --no-cache -t aviumlabs/drupal:latest-alpine .

 
### Specific Version


To build a specific version of Drupal; edit the Dockerfile and change 
version to the one you want to build:   



## Run


Run the docker image and confirm alpine version, postgresql client version:


    $ docker run -it --rm aviumlabs/drupal:latest-alpine /bin/sh

    /opt # cat /etc/alpine-release


>
> 3.19.1
>


    /opt # psql --version


> 
> psql (PostgreSQL) 16.2
> 


## Template Repo


This repo is a template repo.  
GitHub documentation for using a template repository is here:  


    https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template



## Companion Project


There is a companion project to this project for building a Drupal
project integrated with PostgreSQL.  


    https://github.com/aviumlabs/drupal-compose.git


The aviumlabs/drupal-compose repo is also a template repository.   


The services included are:  
- PostgreSQL 16.2  
- Drupal 10.2.6 or later  


## Project Notes


### Docker Hub


Internal notes for pushing images to Docker Hub.  

    $ docker push aviumlabs/drupal:<tagname>-alpine  

 
    $ docker push aviumlabs/drupal:latest-alpine  

    $ docker push aviumlabs/drupal:latest-bookworm
