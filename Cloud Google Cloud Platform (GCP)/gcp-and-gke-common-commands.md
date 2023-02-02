# GCP and GKE Common Commands

## GKE - Cluster Setup (Personal Dev)

### Create Cluster
1. Login to https://console.cloud.google.com/kubernetes
2. Select "Kubernetes Engine" -> "Clusters" view
3. A Prompt will appear to create a project
   1. Select "Create Project" (NOTE: No organization is required)
   2. Build/Name Top-Level Project for GCP
4. Select "Create Cluster", select the following:
   1. Cluster Basics
      1. Name cluster
      2. Use Zonal cluster with latest vers of GKE
         1. Suggest to use static channel (manual updates), also can use release channel (could break deployments)
      3. Node Pools -> default-pool
         1. By default, pool nodes will be 3. Should modify to 2 nodes. Select size -> number of nodes -> 2
      4. Node Pools -> default-pool -> Nodes
         1. Size cluster according to solution being deployed (or planned to be deployed)
         2. Select Machine Type
            1. Ex: For solution that is small-medium app, size to n1-standard-4 (2 nodes of 4 vCPU, 15 GB memory)
            2. https://cloud.google.com/compute/docs/machine-resource#recommendations_for_machine_types
            3. https://cloud.google.com/compute/docs/machine-resource#machine_type_comparison
      5. Click Create
5. Cluster takes ~3-6 minutes to be ready
   1. It will be ready when it appears in the "Clusters" view

### Create Master Authorized Network for Cluster
1. Navigate to Kubernetes Engine -> Clusters
2. Edit cluster and set Master Authorized Networks to "Enabled"
    - Ensures that cluster API can only be accessed by GCP (in Cloud Shell)
    - To use local kubectl and connect to cluster, add personal IP Address as well (ex: 1.1.1.1/32)

### Firewall Rules
- "VPC Network" -> "Firewall Rules" -> "Create Firewall Rule"
-   ```
    Name: allow-in
    Targets: All instances in the network
    Source IP Ranges: <your IP>/32  // ex: 1.1.1.1/32
    Protocols and Ports: "Allow All"
    ```
- Refer to [Deleting GCloud open Firewall Rules (0.0.0.0/0)](#deleting-gcloud-open-firewall-rules-00000) for removing public access

### Deleting GCloud open Firewall Rules (0.0.0.0/0)
Run first part to confirm what will be deleted (omit everything after `while read line;`)
```
gcloud compute firewall-rules list --format="table(name,sourceRanges.list():label=SRC_RANGES)" | grep "0.0.0.0/0" | grep -Eo '^[^ ]+' | while read line; do gcloud compute firewall-rules delete $line; done
```
- Review your firewall rules and delete any that have 0.0.0.0/0 in the IP range
- 0.0.0.0/0 allows all ip addresses
- When creating ["LoadBalancer" services in GKE, 0.0.0.0/0 is assigned w/ public access](https://cloud.google.com/kubernetes-engine/docs/concepts/service-load-balancer-parameters)


## Cluster Environments Table Template
Basic Template for possible Cluster Environments
- Each Env often has its own Cluster
- GCP Projects may be separated by "Development" and "Production" Projects (for cost/security/etc)

| Type        | Environment     | URL                 | GCP Cluster    | GCP Project ID |
| ----------- | --------------- | ------------------- | -------------- | -------------- |
| Development |                 |                     |                |                |
|             | **Test**        | https://test...     | {cluster_name} | {project_id}   |
|             | **Integration** | https://integration | {cluster_name} | {project_id}   |
|             |                 |                     |                |                |
| Release     | **Staging**     | https://staging...  | {cluster_name} | {project_id}   |
|             | **Production**  | https://production  | {cluster_name} | {project_id}   |
|             |                 |                     |                |                |
