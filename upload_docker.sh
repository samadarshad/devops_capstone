dockerpath=samadarshad/devops-capstone-app
docker login -u samadarshad
docker tag devops-capstone-app $dockerpath
docker push $dockerpath