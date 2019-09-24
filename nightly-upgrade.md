Find the release tag here: https://openshift-release.svc.ci.openshift.org/

```sh
oc adm upgrade --to-image=quay.io/openshift-release-dev/ocp-release-nightly:[RELEASE_TAG] --force=true
```
