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
                 sh "kubectl create -f /home/ubuntu/UdacityCapstoneDevOps/deploy.yml"
                 sh "kubectl create -f /home/ubuntu/UdacityCapstoneDevOps/capservice.yml"

            }
        }
    }
}
