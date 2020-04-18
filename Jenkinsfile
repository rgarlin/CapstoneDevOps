pipeline {
    
    environment {
    registry = "rgarlin/flask"
    registryCredential = "dockerhub"
    }

    agent any
    
    stages {
        stage('Linting') {
            steps {
                echo 'Building..'
                sh "sudo /home/ubuntu/UdacityCapstoneDevOps/build_docker.sh" 
            }
        }
        stage('Build') {
            steps { 
              script {
                 docker.withRegistry("", registryCredential) {
                 sh "docker push rgarlin/flask:latest"    
             } 
           } 
          }    
        } 
        stage('Deploy') {
            steps('kubectl')  {
                echo 'Deploying....'
                 withAWS(credentials: 'aws-credentials', region: 'us-east-1') {
                     sh "/usr/local/bin/aws eks --region us-east-1 update-kubeconfig --name UdacityDevCap"
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config create -f deployment.yml"
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config create -f capservice.yml"
            }                                                                 
        }
   }
}

    

