dockerpath=samadarshad/devops-capstone-app
kubectl run devops-capstone-app --image=$dockerpath --port=80
kubectl port-forward devops-capstone-app 8000:80