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
                 sh "kubectl create -f --kubeconfig=/home/ubuntu/UdacityCapstoneDevOps/capservice.yml"
                                                                      
            }
        }
    }
}
