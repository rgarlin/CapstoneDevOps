pipeline {
    agent any

    stages {
        stage('Linting') {
            steps {
                echo 'Building..'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                 sh "kubectl --kubeconfig=/home/ubuntu/UdacityCapstoneDevOps/apply -f capservice.yml"
            }                                                                 
        }
    }
}
