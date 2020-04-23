Udacity Cloud DevOps Capstone Project

This is a flask app that display a web page with my name. 

I used Docker and Kubernetes and Kubernetes uses the latest version 
from Docker Hub. Since it's a rolling update the EC2 instances did not 
change on my AWS EC2 page. I have a print screen of "kubectl describe deployments", 
which a mentor suggested in the forum. 


<div class="header">
  <h1>Flask Application File</h1>
  <p>main.py</p>
</div>

<div class="header">
  <h1>Docker Files</h1>
  <p>Dockerfile</p>
  <p>build_docker.sh</p>
</div>

<div class="header">
  <h1>I used the aws eks for the creation of the cluster, but also have the cloudformation scripts</h1>
  <p>eks-template.yml</p>
  <p>worker-node.yml</p>
</div>

<div class="header">
  <h1>Kubernetes Files</h1>
  <p>deploy.yml</p>
  <p>capservice.yml</p>
</div>

<div class="header">
  <h1>Jenkins File</h1>
  <p>JenkinsFile</p>
</div>

<div class="header">
  <h1>AWS LB URL</h1>
  <p>http://ada469eda821b402493d2f0988e1f0dd-1238219245.us-east-1.elb.amazonaws.com/</p>
</div>



