---
title: "Docker Introduction"
date: "2023-11-21 11:10:29"
categories: docker
image: "/assets/docker/docker_intro.jpg"
tags: docker, devops, container
permalink: "/:categories/:title.html"
---
Post 1

<br>

## What is Docker ? 

Docker is a **container technology**, a tool to create and manage containers. It's used to package an application along with all it's dependencies, libraries and runtime as a package known as container Image and to manage it.

### Images

Basically the packaged form of an application or a program which contains the code, runtime, libraries, dependencies etc... which are required to ensure that the application will always run irrespective of the environment.

Further they can be used as a template to build containers.

**Advantages**

Few notable advantages of using Image's rather than the traditional way where the development team provides the artifact with all the installation steps required to run the application to the Operation team which could lead to **human error** in the deployment process due to various scenarios (***Dev team missed an instrution for installation, Ops team missed a step while installing the required dependencies etc...***).

* Images are **reliable** and can be used to **rapidly deploy** the application as all the required components are already present in it.
* We can easily **distribute** and **manage** it as well, meaning can be stored in ***Docker Hub/ Local Registry*** and accessible to all members of the team.


### Container

We can call it as the running instance of an image and its very lightweight, contains less bloatware (only has the necessary components required to run the application), uses minimum resources. 

By using containers we can also run different versions of the same application without any hazle which is other ways not possbile with the traditional installation of an application which causes conflicts with the package versions. 

Container technology is present for a long time, but the introduction of ***container Images & container registries*** by Docker started all the revolution which we now see in the tech.

### Dockerfile

In a nutshell a Dockerfile is basically a text file which contains the instruction required to build or customize a Docker image.
