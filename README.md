<H1>Introduction</H1>
<p>When we built our application trought the CI/CD pipeline we didn’t package it in the best possible way. All we did was to compress the application with it’s dependencies into a zip file which allowed us to deploy the application automatically after configuring the required runtime in the target server. However, today one of the most useful and best ways to package applications are Containers because they allows us to package the application together with it dependencies and runtime in a single artifact.</p>

<H1>Project Overview</H1>
<p>This week’s project consists on writing a Dockerfile to package your NodeWeightTracker application into an image and configure a CI/CD process to automate the deployment. However this week we will raise the level a bit to achieve a CI/CD process that complies with best practices and implement the practice of Pipeline as Code.

Regarding the architecture of our solution we will keep the same infrastrucutre but this time we will run the application as a container:</p>

<h2>How the project look in high level?</h2>
<a href="https://ibb.co/hy2D3hR"><img src="https://i.ibb.co/drkG810/141464435-f83b4376-b5f3-4359-91d8-e8542bba40bf.png" alt="141464435-f83b4376-b5f3-4359-91d8-e8542bba40bf" border="0" /></a>

<h2>VMs Requirements</h2>
1)VMagent machine for CI process </br>
2)3 VMS for each envoirment- on each VM we will connect to relevnt envoirment</br>
<h2>Agent installtion requirements </h2>

<B>Install Docker:</B></br>
sudo apt-get remove docker docker-engine docker.io </br>
sudo apt-get update</br>
sudo apt install docker.io -y </br>
sudo snap install docker</br>
docker --version</br>
sudo docker run hello-world</br>
sudo chmod 666 /var/run/docker.sock</br>

<B>Install Agent:</B></br>
Azure devops -> Organization Settings -> Agent pool -> add pool -> New agent </br>
<B>Connect to envoirment:</B></br>
Azure devops -> Piplines - >Envoirnemts -> new -> add resorcue -> virtual machine - > choose relvent os -> copied to the VM
