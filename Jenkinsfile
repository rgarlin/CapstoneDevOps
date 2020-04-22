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
                sh "hadolint /home/ubuntu/UdacityCapstoneDevOps/Dockerfile" 
            }
        }
        stage('Build') {
            steps { 
              script {
                 docker.withRegistry("", registryCredential) {
                 sh "/home/ubuntu/UdacityCapstoneDevOps/build_docker.sh"
                 sh "docker push rgarlin/flask:latest"    
             } 
           } 
          }    
        } 
        stage('Deploy') {
            steps('kubectl')  {
                echo 'Deploying....'
                 withAWS(credentials: 'api_program_user', region: 'us-east-1') {
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config apply -f /home/ubuntu/UdacityCapstoneDevOps/capservice.yml"
            }                                                                 
        }
     }
   }
}

    

