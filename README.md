<img src="https://bootcamp.rhinops.io/images/k8s.gif">
<H1>Project Overview</H1>
<p>First of all we will create a Kubernetes Cluster in Microsoft’s Azure Kubernetes Service (AKS) for the project infrastructure.</p>
<img src="https://bootcamp.rhinops.io/images/aks-1.png"width="400" height="160" >

<p>Once the cluster is created we are going to run our NodeWeightTracker application on top of AKS. This means that we need to write all the configuration files that are needed for running our application in a Kubernetes Cluster.</p>

<img src="https://bootcamp.rhinops.io/images/kubernetes-resources.png" width="400" height="160" >

<p>Finally we will, update or CI/CD process to deploy our already dockerized application into the Kubernetes cluster.</p>
<img src="https://bootcamp.rhinops.io/images/k8s-cicd.png"  width="600" height="600">

<H2>how to make it work?</H2>
<H3>Prerequisites </h3>
1)Create two azure kuberntis serice (AKS) and azure container registry (ACR). </br></br>
2)install nginx ingress with the following command:
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.1/deploy/static/provider/cloud/deploy.yaml </br></br>
3)intallpostgres and create database using helm with the following command </br></br>
helm repo add bitnami https://charts.bitnami.com/bitnami </br>
helm install my-release bitnami/postgresql </br></br>
4)Create two envoirments in azure devops and connect them to the relvent AKS, one for staging and one for production.  </br>
<H3>CI stage </H3>
1) Create  docker container and push it the ACR. </br>
2) Upload the manifests files to artifact.

<H3>CD stage </H3>
1) Creating secrets with the credentials  that we stored in the library.</br>
2) Deploy to kuberntis cluster on staging environment. </br>
3) Deploy to kuberntis cluster on production environment. </br>
