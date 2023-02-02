# GKE Log Levels

## Container
```
resource.type="k8s_container"
timestamp > "2017-02-21T19:30:22.800Z" AND timestamp < "2017-02-21T19:48:22.800Z"
resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name}"
resource.labels.namespace_name="{namespace_name}"
resource.labels.pod_name : "{pod_name} severity>=DEFAULT
```

## Pod
```
resource.type="k8s_pods"
timestamp > "2017-02-21T19:30:22.800Z" AND timestamp < "2017-02-21T19:48:22.800Z"
resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name}"
resource.labels.namespace_name="{namespace_name}"
resource.labels.pod_name : "{pod_name}" severity>=DEFAULT
```

## Node
```
resource.type="k8s_node"
timestamp > "2017-02-21T19:30:22.800Z" AND timestamp < "2017-02-21T19:48:22.800Z"
resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name}"
jsonPayload.MESSAGE : "{pod_name}-{id}"
```

## Cluster
```
resource.type="k8s_cluster"
timestamp > "2017-02-21T19:30:22.800Z" AND timestamp < "2017-02-21T19:48:22.800Z"
resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name}"
protoPayload.status.code != 0
```
