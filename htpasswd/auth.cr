apiVersion: config.openshift.io/v1
kind: OAuth
metadata:
  name: cluster
spec:
  identityProviders:
    - challenge: true
      htpasswd:
        fileData:
          namea: <secret_name> 
      login: true
      mappingMethod: claim
      name: htpasswd
      type: HTPasswd

