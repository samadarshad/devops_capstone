Deployment Strategy:
- Rolling: as this is the deployment strategy of Kubernetes. Also so that the incremental changes can be tested with real production users gradually, as opposed to Blue/Green which requires the Development team to test their changes in a staging environment, which may not reflect production.

CI host:
- CircleCI as most familiar with this.

Docker application:
- Nginx "Hello World, my name is Samad. This application was created at 9/4/22 15:14"
- because I would like to take the opportunity to learn a bit more about Nginx

Infrastructure:
- eksctl (Cloudformation) using a config file: https://eksctl.io/usage/creating-and-managing-clusters/
- for local testing, I have a kubernetes cluster running locally with DockerDesktop
- Kubernetes using manifest file: https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-apply

Post production testing:
- Locust Load testing


Example: https://github.com/vprocopan/own-capstone


Plan:
1) Create simple Nginx docker image which takes input: - name, current time, displays it in the html

nginx -s stop   
nginx -p ./nginx -c nginx.conf
nginx


lsof -nPL -iTCP:8080
sudo rm /usr/local/var/run/nginx.pid
kill <number>


...
alternatively, instead of relative paths, replace the /etc/nginx/nginx.conf and /www directories