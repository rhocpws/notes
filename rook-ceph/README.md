```sh
git clone https://github.com/rook/rook.git
cd rook
git checkout -b remotes/origin/release-1.1
cd cluster/examples/kubernetes/ceph
oc create -f common.yaml
oc create -f operator-openshift.yam
oc create -f cluster-on-pvc.yaml
```
### Go get some coffee and be patient

### Using the yaml files included in this repo
```sh
oc create -f cephfs.yaml
oc create -f rook-sc.yaml
```
