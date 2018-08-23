---
title: Containers And Kubernetes
author: Bryan Rosander
---

### Applications B.C. (Before Containers)

* Building
    1. Download libraries
    1. Configure environment
    1. Build application
* Running
    1. Unzip/install
    1. Configure application
    1. Run application

### Problem?

* (Lack of) Portability
* (Lack of) Isolation
* Manual Configuration

### Solutions

* Virtual machines
* Chroots/jails
* Sdk managers

### Enter Containers (Docker)

[But didn't we already have VMs?](https://stackoverflow.com/a/33132462/586148)

* Images as code :)
    * [RocketChat](https://github.com/RocketChat/Docker.Official.Image/blob/294dc246d5a38b4143dbeb3435fbce501583bae7/Dockerfile)
* Isolation
* Central repositories
* Lightweight
* Easy to spin up

```
docker run --name db -d mongo:3.0 --smallfiles
docker run --name rocketchat -p 127.0.0.1:3000:3000 --env ROOT_URL=http://localhost --link db -d rocket.chat
```

### Container Best Practices

* Small image
* Single process
* Compose via networking

### Docker Compose

Lets us specify declaratively which containers to run, how to link them together.

* Simple - good for local testing
* Not a great production deployment story

[See compose yaml](rocket-chat-compose/docker-compose.yaml)

### Kubernetes

Kubernetes is a cluster orchestration tool that aims to be a cloud-agnostic way to deploy applications in a scalable and fault tolerant way.

All configuration is in yaml files, can be versioned :)

Kubernetes handles configuration at the pod level and up.

### Pod

Group of containers that work together to provide a single external service

### Configuration

* Configmap
* Secret
* PersistentVolume

### Orchestration

* Deployment
* StatefulSet
* Daemonset

### Disovery/Ingress:

* Service
* Ingress

### Isolation/Security:

* Namespace
* Network policy
* Authentication
* Authorization

### Package Management

Helm is Kubernetes' version of apt get.

[RocketChat Chart](https://github.com/helm/charts/tree/master/stable/rocketchat)

```
helm install --name rocketchat stable/rocketchat --set image=rocket.chat:0.68.4
```

### Kops

[Ok, so what if we could version our Kubernetes cluster as code? :)](https://github.com/kubernetes/kops)

### Chick Fil A

[k8s everywhere](https://medium.com/@cfatechblog/edge-computing-at-chick-fil-a-7d67242675e2)

### End

* [Slides (https://goo.gl/NWK1y8)](https://brosander.github.io/k8s-talk/#/)
* [Slides source](https://github.com/brosander/k8s-talk)
* [\@bryan_rosander](https://twitter.com/bryan_rosander)
* [Blog](https://blog.rosander.ninja/)

