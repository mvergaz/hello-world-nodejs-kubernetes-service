# hello-world-nodejs-kubernetes-service
Minimalistic *Hello world* NodeJS Service in minikube
## Requisites:
-   git client
-   locally installed minikube
-   configured kubectl
## Shipped docs:
-   Dockerfile
-   hello-node-deployment.yaml
-   src/index.js
##  Steps:
-   Open console window on user home and clone this repo:\
`git clone https://github.com/mvergaz/hello-world-nodejs-kubernetes-service /hello-minikube`
-   Build the image onto minikube:\
`minikube image build -t local/hello-node-image ./hello-minikube/`
-   Deploy the service by applying the yaml:\
`kubectl apply -f ./hello-minikube/hello-node-deployment.yaml`
-   Confirm deployment:\
`kubectl get deployments`
-   Expose the deployment as a cluster service:\
`kubectl expose deployment hello-node-app --type=LoadBalancer --port=8080`
-   Confirm the service:\
`kubectl get services`
-   Expose the cluster service to the world:\
`minikube service hello-node-app`
## Checking:
-   Open a browser on http://127.0.0.1:8080
-   View the log with kubectl:\
`kubectl logs deployment.apps/hello-node-app`
## Roll all back:
-   Delete service:\
`kubectl delete -n default service hello-node-app`
-   Delete deployment:\
`kubectl delete -n default deployment hello-node-app`