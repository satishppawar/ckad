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
