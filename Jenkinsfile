pipeline {
    agent any {
     
    stages  { 
        stage("Linting") {
          echo 'Linting'
          sh  'docker run --rm -i hadolint/hadolint hadolint --ignore DL3007 - <./Dockerfile' 
          }
        stage("Buildi Image") {
          sh "./run_docker.sh"
        }
        stage('Deploying') {
      echo 'Deploying to AWS...'
      dir ('./') {
        withAWS(credentials: 'aws-credentials', region: 'eu-central-1') {
            sh "aws eks --region us-east-1 update-kubeconfig --name UdacityDevCap"
            sh "kubectl apply -f aws/aws-auth-cm.yaml"
            sh "kubectl create -f deploy.yml"
            sh "kubectl create -f capservice.yml"            
        }

