pipeline {
    
    environment {
    registry = "rgarlin/flask"
    registryCredential = "dockerhub"
    }

    agent any
    
    stages {
        stage('Linting') {
            steps {
                echo 'Linting..'
                sh "hadolint /home/ubuntu/UdacityCapstoneDevOps/Dockerfile" 
            }
        }
        stage('Build') {
            steps { 
              script {
                 echo 'Building'
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
                   script{
                       try{
                           sh "kubectl --kubeconfig=/home/ubuntu/.kube/config apply -f /home/ubuntu/UdacityCapstoneDevOps/capservice.yml"
                       }catch(error){
                           sh "kubectl --kubeconfig=/home/ubuntu/.kube/config create -f /home/ubuntu/UdacityCapstoneDevOps/capservice.yml"
                       }
                   }
            }                                                                 
        }
     }
   }
}

    

