# Windows 11 WSL setup

1. Clone this repo `https://github.com/sandervanvugt/ckad`

git clone git@github.com:sandervanvugt/ckad.git

2. ```sh ./minikube-docker-setup.sh ```

3. Minikube auto completion

- minikube completion -h | less
- source <(minikube completion bash)

----
## Running Simple


* if docker is not running you will get following , start it using # start services using sysvinit

    sudo systemctl start docker
    System has not been booted with systemd as init system (PID 1). Can't operate.
    Failed to connect to bus: Host is down


### Start docker in WSL
```sh
 sudo service docker start
```

----

### 101 - Getting Started with Minikube

```sh
 minikube start --vm-driver=docker --cni=calico
 ```

 * `--cni=calico` is networking plugin

```sh
  minikube status
```

* minikube log in to host
```sh
minikube ssh
```


```
 kubectl get all
```

```sh
 docker ps
 ```

-----------
### minikube dashboard

* GUI based interactive app to use minikube
```sh
minikube dashboard
```

*NOTE* Do not use GUI instead use `kubectl`

--------------------
## Kubernetes

* Release every 4 months
* Kubernetes is a portable, extensible, open source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation.

* The name Kubernetes originates from Greek, meaning helmsman or pilot. K8s as an abbreviation results from counting the eight letters between the "K" and the "s".

* [K8s Components](https://www.devopsschool.com/blog/kubernetes-tutorials-list-of-components-of-kubernetes/)

![Components](1.K8s-component.png)

----
#### Overview of Kube config file
- Kube cofig allows us to run everything in K8s cluster

`cat ~/.kube/config`
OR
`kubectl config view`

- Config file consists of
> users - details for login to cluster
> context - Current working env

- Setting Context

`kubectl config set-context minikube --namespace=kube-system`

OR

`kubectl config set-context --current --namespace=default`


### Kubectl

```ssh
kubectl -h | less
 ```
-  kubectl completion -h | less

- Load the kubectl completion code for bash into the current shell
 ``` source <(kubectl completion bash)```

----
### Kubernetes Create Deployment

```bash
kubectl create deploy firtnginx --image=nginx --replicas=3
```

* test
```kubectl get all ```

---
