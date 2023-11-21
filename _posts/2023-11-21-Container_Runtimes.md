---
title: "Container Runtimes"
date: "2023-11-21 12:31:23"
categories: docker
image: "/assets/docker/runtimes.png"
tags: docker, devops, container, kubernetes
permalink: "/:categories/:title.html"
---
Post 2

## Container Runtimes 

We can consider the Container Runtime as the **backbone** which does all the heavy lifting of running the containers. It's basically a ***software*** which is installed on the host system which *isolates resources required for running containers, pulling images and to manage the containers lifecycle*.

There are two types of Container Runtimes,

* Low level container runtimes,
* High level container runtimes.

### OCI Runtime Specification

To have a standard specification which all can follow to implement their own runtime, ***OCI spec*** was introduced. It provides us the information about the ***configuration, execution environment***. This config is present in a JSON file which can be used further to create containers in different platforms. (*Windows, Linux*)

### Low level container runtimes

These are based on OCI (*Open Container Interface*) which mainly focuses on the ***creation and management of containers.***

Here are few notable low level container runtimes, 

* **runc** - Created by Docker which is based on *Go Language.* (***standard in the industry***)
* **crun** - Created by RedHat which is based on *C Language*.
* **railcar** - Created by Oracle which is based on *Rust Language*.

The above mentioned are ***native runtimes*** meaning they run their containerized processes on the host kernel. We also do have ***Sandboxed and Virtualized Runtime*** which are kind of *better at isolation* by not directly running on the host kernel.

* ***gVisor & Nabla*** - These are *Sandboxed Runtimes*. ( run their containerized processes in a Proxy layer which then interacts with the host kernel )
* ***runV, Clear & Kata*** - These are *Virtualized Runtimes*. ( utilize the virtual machine interface to run the containerized processes )

> **Note:** Both ***runV & clear*** are deprecated and their features are merfed with Kata containers.

### CRI specification

Back in the day when K8s was introduced ***Docker*** runtime was used as the default runtime and as time went by and the need for support of other container runtimes keeps on raising, the ***CRI*** was created.

Unlike ***OCI***, ***CRI*** deals with the additional aspects of Container management such as,

* Image management,
* Snapshots,
* Networking.

### High level container runtimes

Container runtimes which adhere's to ***CRI*** (*Container Runtime Interface*) specification fall's into High level container runtimes. 

Few notable runtimes which fall under this are,

* ***DockerShim*** ( *deprecated* ),
* ***containerd*** ( *uses runc under the hood and was developed by Docker* ), 
* ***CRI-O*** ( *created for Kubernetes by RedHat* ).
