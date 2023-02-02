# Kubectl Common Queries
- Get all pods in error state:
    - 
    - Version with custom STATE column
        ```
        kubectl get pods --all-namespaces -o custom-columns="POD:metadata.name,STATE:status.containerStatuses[*].state.waiting.reason" | grep -v -E '(none|ContainerCreating|PodInitializing)'
        ```
    - Combined version w/ other pod args:
        ```
        paste <(kubectl get pods --all-namespaces) <(kubectl get pods --all-namespaces -o custom-columns="POD:metadata.name,STATE:status.containerStatuses[*].state.waiting.reason") | grep -v -E '(none|ContainerCreating|PodInitializing)'
        ```
    - SIMPLE Version (Probably best, awk is safest though)
        ```
        kubectl get pods -A | grep -v -E '(ContainerCreating|PodInitializing|Running|Init)'
        ```
    - SAFEST Version (awk validation against STATUS specific column)
        ```
        kubectl get pods -A | awk '{ if(index($4, "ContainerCreating")==0 && index($4, "PodInitializing")==0 && index($4, "Running")==0 && index($4, "Init")==0) print $0}'
        ```
- Get All Pods Running/Init but NOT Ready
  - 
  - awk Version
    ```
    kubectl get pods -A | awk '{ if(index($4, "ContainerCreating")==0 && index($4, "PodInitializing")==0 && index($4, "Completed")==0 && index($4, "Init")==0) print $0}' | grep -Pv '\s+([1-9]+)\/\1\s+'
    ```
  - Easier Version (no awk/regex), may want to also run grep 1/2, 1/3, and 2/3 to cover all bases, depending on # of replicas (often replicas are no more than 3)
    ```
    kubectl get pods -A | grep 0/ | grep -v Completed
    ```
- List all running/failed jobs
  - 
  - 
    ```
    kubectl get jobs -A --field-selector status.successful=0
    ```
  - To also see status (`none` means `Running`, awk replace makes all the spacing messed up):
    ```
    paste <(kubectl get jobs -A --field-selector status.successful=) <(kubectl get jobs -A --field-selector status.successful= -o custom-columns="STATUS:status.conditions[0].type") | grep -v -E '(Complete|none)'
    ```
- ...
  - 
  - 
