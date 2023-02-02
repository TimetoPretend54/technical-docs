# GKE General Log Queries

## Error Search
```
resource.type="k8s_container"
timestamp > "2017-02-16T11:30:00.000Z" AND timestamp < "2017-02-16T11:40:00.000Z"
resource.labels.project_id="{project_id}"

resource.labels.cluster_name="{cluster_name_1}" OR resource.labels.cluster_name="{cluster_name_2}"

textPayload : "{error_text}" OR
jsonPayload.message : "{error_text}" OR
jsonPayload.msg : "{error_text}"

severity>=DEFAULT
```
- Can also change "severity" from DEFAULT to ERROR

### Filter out Containers
```
resource.type="k8s_container"

resource.labels.container_name != "{container_name_1}" AND
resource.labels.container_name != "{container_name_2}" AND ...

resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name} severity>=ERROR
resource.labels.namespace_name="{namespace_name}"
```

### HTTP Errors
```
resource.type="k8s_container"
resource.labels.project_id="{project_id}"
resource.labels.location="{location}"
resource.labels.cluster_name="{cluster_name}" severity>=DEFAULT

resource.labels.container_name != "{container_name_1}" AND
resource.labels.container_name != "{container_name_2}" AND ...

(jsonPayload.level + "Error" AND jsonPayload.msg !~ "{error_msg} AND resource.labels.container_name != "{container_name_1}) OR 
(resource.labels.container_name = "{container_name_1}" AND textPayload : "{url_path}" AND (textPayload !~ "200" AND textPayload !~ "202" AND textPayload !~ "204")
```
