# kubectl explain
- kubectl explain --> `kubectl explain pod`
- kubectl explain pod.spec

### RUN POD
- kubectl run nginxxx --image=nginx
- kubectl get pods nginxxx -o yaml | less
- kubectl get pods -o wide

### Generating  YAML

- kubectl run nginxx --image=nginx --dry-run=client -o yaml>my.yaml
- kubectl run nginxx --image=nginx --dry-run=client -o yaml
- kubectl explain pod

##Create a Job

kubectl create job -h | less
kubectl get job
kubectl get job -o yaml
kubectl get pods,jobs
kubectl delete job job.batch/my-job
kubectl delete job.batch/my-job
kubectl get pods,jobs

For day-1 command refer [pastebin day-1](https://pastebin.com/FufTynQU) or [CKAD day-1 commands](./CKAD%20march%2023%20day1.txt)
