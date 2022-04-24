To initialise the infrastructure:
0) Ensure you are authenticated with aws cli with the same IAM credentials as the CircleCI system. Otherwise you will need to follow https://aws.amazon.com/premiumsupport/knowledge-center/amazon-eks-cluster-access/ 
1) eksctl create cluster --name udacity-devops-capstone --profile abdus-samad
2) Ensure your kubectl context is AWS
3) kubectl create -f deployments/deployment.yml -f deployments/service.yml
4) kubectl get nodes to check the pods are online.
5) kubectl get svc to see the external IP of the service. Visit the url endpoint to check the app is available publically.

To run CircleCI:
Ensure environment variables are set:
DOCKERHUB_PASSWORD
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
Note the AWS user must be the same as the user which created the EKS cluster.

To delete the infrastructure:
eksctl delete cluster --name udacity-devops-capstone --profile abdus-samad