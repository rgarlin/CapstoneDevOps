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
                 sh "/home/ubuntu/UdacityCapstoneDevOps/kubectl create -f deploy.yml"
                 sh "/home/ubuntu/UdacityCapstoneDevOps/kubectl create -f capservice.yml"

            }
        }
    }
}
