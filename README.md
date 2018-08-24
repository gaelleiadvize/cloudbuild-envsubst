# Google Cloud Builder : envsubst docker image 


Replace env in Kubernetes resources files

cloudbuild.yaml : 
```
steps:
- name: 'eu.gcr.io/$PROJECT_ID/envsubst'
  args: ['/workspace/deployment.yaml', '/workspace/deployment.yaml']
  env:
  - 'COMMIT_SHA=$COMMIT_SHA'
```
