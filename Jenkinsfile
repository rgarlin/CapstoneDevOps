pipeline {
    
    environment {
    registry = "rgarlin/flask"
    registryCredential = 'dockerhub'
    dockerImage = ''
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
                docker.withegistry{"https://registry.hub.docker.com", 'dockerhub')
                sh "sudo docker push rgarlin:latest" 
            } 
          }    
        
        stage('Deploy') {
            steps('kubectl')  {
                echo 'Deploying....'
                 sh "kubectl --kubeconfig=/home/ubuntu/.kube/config create -f deployment.yml"
                 sh "kubectl --kubeconfig=/home/ubuntu/.kube/config create -f capservice.yml"
            }                                                                 
        }
   }
}

    

