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
                 sh "docker push rgarlin/flask:v2"    
             } 
           } 
          }    
        } 
        stage('Deploy') {
            steps('kubectl')  {
                echo 'Deploying....'
                 withAWS(credentials: 'api_program_user', region: 'us-east-1') {
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config set image deployments/flask-app"
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config apply -f /home/ubuntu/UdacityCapstoneDevOps/deploy.yml"
                     sh "kubectl --kubeconfig=/home/ubuntu/.kube/config apply -f /home/ubuntu/UdacityCapstoneDevOps/capservice.yml"
            }                                                                 
        }
     }
   }
}

    

