# EXAM

1. KCNA - Entry Level
2. CKAD - Basic (Easy)
3. CKA - Intermediate
4. CKS - Security

---
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


#### Start docker in WSL
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
> users - details for login to cluster. i.e client-certificate and client-key
> clusters - details of the cluster
> contexts - Current working env having details such as namespace,

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

### Understanding Containerfile

- Containerfile (Dockerfile) used to build the container images

- Alternative to docker to [podman](https://podman-desktop.io/)

- Writing efficient docker files

- Build, Save Docker file

```cd ckad/
ls
cd dockerfile/
ls
cat Dockerfile
cat sander.repo
docker build -t centmap .
docker images
docker ps
docker save centmap -o centmap.tar
```
#### 1. POD

- It is basic unit in K8s & represents a set of containers that share common Resources such as an IP address and persistent storage volume

#### 2. Deployments

- It is a default entity that is rolled out with k8s

#### 3. Services

- Services make deployments accessible from outside by providing a single IP/port combination.Services by default provide access to pod in round Robin fashion using a load balancer.

#### 4. kubectl

- It is under the hood uses curl to send a request to Kubernetes API.It has many sub commands, making it possible to manage all aspects of k8s.

- You use tube kubectl command --help documentation, including examples.

- Use  `source<(kubectl completion bash)` to make working with kubectl easier

- Use ` kubectl explain pod`
---

#### Pod vs Deployment

- Standalone pods are not rescheduled in case of events such as node failure. However, if pod is deployed using deployment then pod is recreated in case of accidental termination.

---
## YAML Basics

- YAML is human-readable data-serializable language
- Uses indentation to identify the relations

- K8s yaml
> apiVersion
> kind
> metadata
> spec

- Use `kubectl explain` to get more information
---

### Generating Yaml

- To generate yaml, `--dry-run=client -o yaml >my.yaml` as an argument to the kubectl run and kubectl create commands
> eg.  kubectl run nginxx --image=nginx --dry-run=client -o yaml>my.yaml
> kubectl run nginxx --image=nginx --dry-run=client -o yaml

- Check my.yaml file

```
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginxx
  name: nginxx
spec:
  containers:
  - image: nginx
    name: nginxx
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
  activeDeadlineSeconds: 30
status: {}
```

- Use explain command and spec to `activeDeadlineSeconds`
> kubectl explain pod.spec

- Yaml file will be like

```
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginxx
  name: nginxx
spec:
  containers:
  - image: nginx
    name: nginxx
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
  activeDeadlineSeconds: 25
status: {}
```
### Kubectl create vs apply

- Create --> Used to create a resource from YAML
- Apply (update existing once Or create new if not present ) --> create a resource if does not exist yet and modify it if it already exists & has been created with `kubectl apply` earlier

---

## Exercise

- Create a YAML file to run the nginx container.Find the Appropriate option to set The priority of container. Hint use `kubectl explain`, and next run the yaml file to create a resource

### Solution
- run ` kubectl run nginxx-exe-1 --image=nginx --dry-run=client -o yaml > exe-1.yaml`
- `cat  exe-1.yaml` and priority value in spec

```
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginxx-exe-1
  name: nginxx-exe-1
spec:
  containers:
  - image: nginx
    name: nginxx-exe-1
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
  priority: 0
status: {}
```

- create a pod using `kubectl apply -f exe-1.yaml`

### Learning --> Priority Class

----

### Multi-Container Pod

#### Use cases for multiple container
- Sidecar container - it enhance the primary container, for logging, service mesh etc
- Ambassador Container - a container that represent the primary container to the outside world, such as proxy
- Adapter container - Used to adopt the traffic or data pattern to match the traffic or data pattern in other application cluster

- **NOTE:** Sidecard containers etc., are not defined using specific pod properties from a kubernetes  API resource & it's multi-container pod

