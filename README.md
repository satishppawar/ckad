# Windows 11 WSL setup

1. Clone this repo
2. ```sh ./minikube-docker-setup.sh ```

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
 