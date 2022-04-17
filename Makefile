setup:
	./create_app.sh

build-docker:
	docker build . --tag=devops-capstone-app

lint:
	hadolint Dockerfile

run-local:
	docker container run --publish 80:80 devops-capstone-app:latest

all: lint setup build-docker run-local

initialise_local:
	kubectl create deploy devops-capstone-app --image=samadarshad/devops-capstone-app --port=80

