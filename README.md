# A Drupal Repo


This repo builds a Drupal docker image with a few additional utilities.

This image is based on the Drupal 10.x Bookworm docker image.   


## Naming Convention


The **Standard** naming convention is currently a flat naming convention with 
either a version number or the literal `latest`.


### Standard Naming Convention


    aviumlabs/drupal:<version | latest>-bookworm


Where version is either numeric based on the Drupal version or the literal 
'latest'.  


## Build


### Latest


The image defaults to building the latest version of Drupal specified in the 
`FROM` field.


    docker build --no-cache -t aviumlabs/drupal:latest-bookworm .


Update the base image:


    docker build --pull --no-cache -t aviumlabs/drupal:latest-bookworm .

 
### Specific Version


To build a specific version of Drupal; edit the Dockerfile and change 
the `version` in the `FROM` field to the version you want to build.  


## Run


To run a Docker container based on this image that will be deleted when you exit:


    docker run -it --rm aviumlabs/drupal:latest-bookworm /bin/bash


    /opt # psql --version


> 
> psql (PostgreSQL) 16.3
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
- PostgreSQL 16.3 or later
- Drupal 10.2.7 or later  


## Project Notes


### Docker Hub


Internal notes for pushing images to Docker Hub.  


    $ docker push aviumlabs/drupal:latest-bookworm
