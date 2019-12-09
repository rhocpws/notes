git clone https://github.com/rook/rook.git
cd rook
git checkout -b remotes/origin/release-1.1
cd cluster/examples/kubernetes/
oc create -f common.yaml
oc create -f operator-openshift.yam
oc create -f cluster-on-pvc.yaml 
oc create -f cephfs.yaml
oc create -f rook-sc.yaml
