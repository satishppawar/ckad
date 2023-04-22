# installation GUI WSL

https://www.youtube.com/watch?v=IL7Jd9rjgrM


sudo apt-get update
sudo apt full-upgrade
sudo apt install x11-apps
xeyes &
xcalc
sudo apt install octave
octave --gui&
docker
docker start
minikube start --vm-driver=docker --cni=calico
minikube start --driver=docker
dockerd-rootless-setuptool.sh install -f
docker context use rootless
minikube start --driver=docker --container-runtime=containerd
minikube start --driver=docker
minikube start --vm-driver=docker --cni=calico
docker version
systemctl start docker
sudo systemctl start docker
sudo systemctl docker start
service docker start
sudo service docker start
minikube start --vm-driver=docker --cni=calico
kubectl get pods -A
minikube status
minikube ssh
ls
kubectl get all
kubectl get pods -A
docker ps
minikube dashboard
kubectl create deploy firtnginx --image=nginx --replicas=3
kubectl get all

---

#### using namespaces

- Create namespaces --> `kubectl create namespace mynamespace`
- Using namespace --> `kubectl COMMAND -n mynamespace`
- Get resources --> `kubectl get COMMAND -all-namespaces`
- Set the current namespace --> `kubectl config set-context --current --namespace=my-namespace`

----

### Kubectl Describe

----
### Troubleshoot

- kubectl run -h | less

### minikube Env Troubleshoot

-  minikube ssh
- crictl images


