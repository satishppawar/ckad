sudo apt-get update
sudo apt full-upgrade
sudo apt install x11-apps
xeyes &
xcalc
sudo apt install octave
octave --gui&
sudo apt-get update
sudo apt-get install git vim -y
ls
mkdir CKAD
cd CKAD/
git clone https://github.com/sandervanvugt/ckad.git
lscpu | less
df -h
cd ckad/
ls
sh ./minikube-docker-setup.sh
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
history
octave --gui&
code .
gedit
sudo apt install gedit
gedit
thunar
sudo apt install thunar
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install xrdp
sudo apt-get purge xrdp
sudo apt install -y xrdp
sudo apt install -y xfce4
sudo apt install -y xfce4-goodies
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
sudo nano /etc/xrdp/startwm.sh
sudo /etc/init.d/xrdp start
passwd
s
cd ..
ls
sudo /etc/init.d/xrdp start
sudo apt-get update
ls
cd CKAD/
ls
cd ckad/
git status
git diff
ls
./minikube-docker-setup.sh
minikube ls
minikube list
minikube --help
minikube start --vm-driver=docker --cni=calico
minikube start --vm-driver=docker --cni=calico  --kubernetes-version=v1.26.3
minikube start --vm-driver=docker --cni=calico --kubernetes-version=v1.26.3
minikube
minikube start --vm-driver=docker --cni=calico
docker
docker ps
cat minikube-docker-setup.sh
minikube start --vm-driver=docker --cni=calico
docker start
minikube start --vm-driver=docker --cni=calico
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --vm-driver=docker --cni=calico
minikube start --vm-driver=docker --cni=calico -v
minikube start --vm-driver=docker --cni=calico -f
minikube start --vm-driver=docker --cni=calico
minikube list
minikube start
docker ps
docker ps -a
crictl
crictl ps
sudo apt install crictl
docker stop 785ad33bd761
docker delete 785ad33bd761
docker container rm 785ad33bd761
docker ps
minikube start --vm-driver=docker --cni=calico
docker ps
minikube start --vm-driver=docker --cni=calico
minikube stop
minikube start
minikube delete
minikube start --vm-driver=docker --cni=calico
cd CKAD/
ld
ls
minikube status
minikube --help
history
minikube dashboard
sudo /etc/init.d/xrdp stop
minikube dashboard
sudo apt-get install firefox
firefox
snap install firefox
sudo apt-get install firefox
docker ps
minikube dashboard
history
minikube dashboard
minikube desktop
minikube dashboard
kubectl -h | less
kubectl completion -h | less
kubectl -h | less
kubectl compeletion -h | less
kubectl completion -h | less
kubectl create
kubectl create | less
kubectl config
vi ~/.kube/config
cat ~/.kube/config
minikube list
minikube ls
minikube -h | less
minikbe completion -h | less
minikube completion -h | less
source <(minikube completion bash)
minikube status
minikube status logs
minikube list
kubectl get pods -a
kubectl get pods -n -a
kubectl get pods -n -A
kubectl get pods --all
kubectl get pods
minikube start
kubectl get pods
kubectl get pods -A
minikube delete
kubectl config view
kubectl get pods -A
kubectl config set-context --current --namespace=default
kubectl get pods -A
cd CKAD/
ls
cd ckad/
ls
cat dockerfile/
cd dockerfile/
ls
cat Dockerfile
ls
ls sander.repo
cat sander.repo
docker build -t centmap .
docker images
docker ps
history
docker save centmap -o centmap.tar
ls
history | cut -c 8-
kubectl run -h
kubectl get pods
minikube start
sudo systemctl restart docker
minikube start
sudo systemctl restart docker
docker start
sudo docker start
sudo systemctl restart docker
ps -p 1 -o comm=
service docker start
sudo service docker start
minikube start
kubectl explain
kubectl explain pod
kubectl explain pod.spec
kubectl autocomplete -h
kubectl autocompletion -h
kubectl completion -h
kubectl autocompletion -h
kubectl completion -h
kubectl explain service
cd CKAD/ckad/
kubectl get pod
kubectl get pods nginxxx -o yaml | less
history
kubectl get pods
kubectl describe pod nginxxx
kubectl describe pods -o wide
kubectl get pods -o wide
kubectl get pod nginxxx --dry-run=client -o yaml >my.yaml
kubectl get pod nginxxx --dry-run=client -o yaml>my.yaml
kubectl run pod nginxx --dry-run=client -o yaml>my.yaml
kubectl run nginxx --image=nginx --dry-run=client -o yaml>my.yaml
cat my.yaml
kubectl run nginxx --image=nginx --dry-run=client -o yaml
kubectl explain pod
kubectl explain pod.spec
cat my.yaml
vi my.yaml
cat my.yaml
vi my.yaml
kubectl apply -f my.yaml
kubectl run nginxx-exe-1 --image=nginx --dry-run=client -o yaml > exe-1.yaml
kubectl explain pod.spec
kubectl explain pod.spec | grep prio
vi exe-1.yaml
kubectl apply -f exe-1.yaml
vi exe-1.yaml
kubectl apply -f exe-1.yaml
kubectl get pod -o wide
history
cat exe-1.yaml
ls
cat sidecar.yaml
kubeclt apply -f sidecar.yaml
kubectl apply -f sidecar.yaml
kubectl get pods
kubectl exec -it sidecar-pod -c sidecar -- /bin/bash
kubectl create -f init-example1.yaml
kubectl get pods
kubectl create -f init-example2.yaml
kubectl get pods
history
kubectl get pods -n kube-system
kubectl get pods
kubectl get pods -A
kubectl run -h | less
minikube ssh
kubectl apply -f securitycontextdemo2.yaml
kubectl get pods
kubectl exec security-context-demo --it -- bash/bin
kubectl exec security-context-demo -it -- bash/bin
kubectl get pods
kubectl exec security-context-demo -it -- sh
history
kubectl -f securitycontextdemo.yaml
kubectl apply -f securitycontextdemo.yaml
kubectl get pods
kubectl create job -h | less
docker ps
sudo systemctl start docker
kubectl create job -h | less
docker
docker ps
docker ps -A
minikube start
kubectl create job -h | less
kubectl get job
kubectl get job -o yaml
kubectl get pods,jobs
kubectl delete job job.batch/my-job
kubectl delete job.batch/my-job
kubectl get pods,jobs
history
history | cut -d
history | cut -d ''
history | grep history
history | cut -c 8-
kubectl completion -h | less
kubectl  create job mynewjob --image=busybox --dry-run=client -o yaml -- sleep 5 > mynewjob.yaml
vi mynewjob.yaml
kubectl create -f mynewjob.yaml
kubectl get jobs
kubectl get jobs -f
kubectl get jobs -v
kubectl get jobs -w
history | grep cut
history | cut -c 8-
cd CKAD/ckad/
kubectl creat cronjob -h |less
kubectl create cronjob -h |less
kubectl create job runme --image=busybox --schedule="* * * * *" -- echo greetings from cluster
kubectl create job runme --image=busybox --schedule="* * * * *" - - echo greetings from cluster
kubectl create job runme --image=busybox --schedule="* * * * *" -- echo greetings from cluster
kubectl create cronjob -h |less
kubectl create job runme --image=busybox --schedule="* * * * *" -- echo greetings from cluster
kubectl create job runme --image=busybox --schedule="*/* * * * *" -- echo greetings from cluster
kubectl create job runme --image=busybox --schedule=* * * * * -- echo greetings from cluster
kubectl create cronjob -h |less
kubectl create cronjob my-job --image=busybox --schedule="* * * * *" -- echo welcome from cluster
kubectl get cronjobs,jobs,pods
kubectl logs pod/my-job-28036529-snjr4
sudo apt update
sudo apt install gnome-text-editor -y
gnome-text-editor ~/.bashrc
sudo apt install nautilus -y
df -h
sudo apt install x11-apps -y
nautilus
nautilus
nautilus &
kubectl get pods
systemctl --help
systemctl start docker
systemctl service --help
systemctl service start docker
systemctl service docker start
sudo systemctl  docker start
docker
kubectl get pods
minikube start
sudo systemctl start docker
sudo service docker start
minikube start
docker ps
minikube start
sudo service docker restart
minikube start
kubectl get all
kubectl get -all
kubectl get -a
kubectl --help short
kubectl get --all
kubectl get -A
kubectl get pods -A
minikube delete
minikube start
minikube list
minikube
minikube ls
minikube --help
minikube status
minikube delete
kubeclt get --all
kubectl get --all
kubectl get all
kubectl get pod all
kubectl get -A
minikube status
kubectl get all
kubectl --help
ls
cd CKAD/
ls
cd ckad/
ls
minikube dashboard
sudo apt-get install firefox
minikube dashboard
snap install firefox
sudo apt update && sudo apt -y upgrade
kubectl get all
kubectl create -h | less
kubectl create deploy -h | less
kubectl get all
kubectl delete deployment my-dep
kubectl get all
kubectl run -help
kubectl run -h | less
kubectl get all
kubectl get all -w
kubectl get all
kubectl delete pod hazelcast