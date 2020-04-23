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

I used the aws eks for the creation of the cluster, but alos have the cloudformation scripts
eks-template.yml
worker-node.yml

Kubernetes Files
deploy.yml 
capservice.yml





