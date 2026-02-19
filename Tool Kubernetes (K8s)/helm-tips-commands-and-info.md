# Helms Tips, Commands, and Info

## Errors: 

### Error: UPGRADE FAILED: another operation (install/upgrade/rollback) is in progress
Likely Weird Helm State:

```
helm ls -a -n {namespace} will list all releases within a namespace, regardless of status.

You can also use helm ls -aA instead to list all releases in all namespaces -- in case you actually deployed the release to a different namespace (I've done that before)

to delete: helm uninstall {release} -n {namespace}
```
- Check multiple namespaces just in case
