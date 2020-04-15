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
            container {
                echo 'Deploying....'
                 sh "kubectl create -f capservice.yml"
            }                                                                 
        }
    }
}
