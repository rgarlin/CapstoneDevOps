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
                sh "/home/ubuntu/UdacityCapstoneDevOps/run_docker.sh"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                 sh "kubectl create -f deploy.yml"
                 sh "kubectl create -f capservice.yml"

            }
        }
    }
}
