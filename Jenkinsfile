pipeline {
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
                echo 'Building..'
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
