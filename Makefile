setup:
	./create_app.sh
	docker build . --tag=devops-capstone-app

lint:
	hadolint Dockerfile

run:
	docker container run --publish 80:80 devops-capstone-app:latest

all: lint setup run

initialise_local:
	kubectl create deploy devops-capstone-app --image=samadarshad/devops-capstone-app --port=80

