Edit your htpasswd file then use the following command to push the secret to OCP

```sh
oc create secret generic <secret_name> --from-file=htpasswd=<htpasswd_file> -n openshift-config
```

Edit the auth.cr with the <secret_name> from the previous command
```sh
 oc apply -f auth.cr
```
