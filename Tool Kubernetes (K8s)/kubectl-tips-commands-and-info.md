# Kubectl Tips, Commands, and Info

## Kubectl Commands 

### Delete all CRDs
```
kubectl delete CustomResourceDefinitions --all
```

### Exec Into Pod Bash
```
kubectl exec -it {pod_name} -- /bin/bash (need to be in namespace)
```
OR
```
kubectl exec -it --namespace {namespace} {pod_name} -- /bin/bash
```


## Connecting to Clusters

Requirements:
1. [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/#install-with-homebrew-on-macos) Installed (for connecting to Dev GKE)
2. [Helm](https://helm.sh/docs/intro/install/#from-homebrew-macos) Installed


## Google Cloud Platform - GKE

Requirements:
1. [GCloud SDK](https://cloud.google.com/sdk/docs/downloads-interactive) Installed (for connecting to DEV GKE)

### GCloud Kubectl Auth
Log into GCP Account:
```
gcloud auth login
```

Then input appropriate information
```
gcloud container clusters get-credentials {ClusterName} --zone {compute/zone} --project {project-name}
```

## Connect to K8s Deployed Database with PortForwarding
1. 
    ```
    kubectl config use-context {Cluster-ENV}
    ```
2. 
    ```
    kubectl port-forward service/{service-name} 5432:5432
    ```
3. Use Appropriate Tool, ex: Postgresql, VS Code Extensions `PostgreSQL Explorer`
4. Fetch Credentials for Connecting to DB
