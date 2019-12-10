```sh
oc create secret generic <secret_name> --from-file=htpasswd=<htpasswd_file> -n openshift-config
```

```sh
 oc apply -f auth.cr
```
