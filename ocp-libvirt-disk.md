Create a new disk image with the desired size

```sh
qemu-img create -f qcow2 ocp.qcow2 50G
```

Prepare the node for shutdown
```sh
oc get nodes
oc adm cordon [NODE_NAME]
oc adm drain [NODE_NAME] --ignore-daemonsets

# Shutdown the VM
```

Resize and rename the new disk file
```sh
virt-resize --expand /dev/sda3 [NODE_DISK_NAME] ocp.qcow2
virt-filesystems --long -h --all -a ocp.qcow2
mv ocp.qcow2 [NODE_DISK_NAME]
```

Make the node schedulable again
```sh
# Boot up the VM

oc adm uncordon [NODE_NAME]
```
