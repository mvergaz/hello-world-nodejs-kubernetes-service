# hello-world-nodejs-kubernetes-service
Minimalistic *Hello world* NodeJS Service in minikube
## Requisites:
-   a git client
-   a locally running minikube
-   a configured kubectl
## Shipped docs:
-   Dockerfile
-   hello-node-deployment.yaml
-   src/index.js
##  Steps:
-   Open console window on user home and clone this repo:\
`git clone https://github.com/mvergaz/hello-world-nodejs-kubernetes-service`
-   Build the image into minikube:\
`minikube image build -t local/hello-node-image ./hello-world-nodejs-kubernetes-service/`
-   Deploy the service by applying the yaml:\
`kubectl apply -f ./hello-world-nodejs-kubernetes-service/hello-node-deployment.yaml`
-   Confirm deployment:\
`kubectl get deployments`
-   Expose the deployment as a cluster service:\
`kubectl expose deployment hello-node-app --type=LoadBalancer --port=8080`
-   Confirm the service:\
`kubectl get services`
-   Expose the cluster service to the world:\
`minikube service hello-node-app`
## Checking:
-   View the log with kubectl:\
`kubectl logs deployment.apps/hello-node-app`
## Roll all back:
-   Delete service:\
`kubectl delete -n default service hello-node-app`
-   Delete deployment:\
`kubectl delete -n default deployment hello-node-app`
