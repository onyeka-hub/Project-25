apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig
metadata:
  name: tooling
  region: us-east-1
  version: "1.24"
nodeGroups:
  - name: tooling
    instanceType: t2.medium
    desiredCapacity: 2
    volumeSize: 500

kubectl create secret generic aws-secret --namespace kube-system --from-literal key_id=AWS ACCESS KEY --from-literal access_key=AWS SECRET KEY

kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=release-1.14"

Then install artifactory

eksctl create cluster -f cluster name

https://github.com/fola2022
