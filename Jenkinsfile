pipeline {
    agent any

    stages {
        stage('Linting') {
            steps {
                echo 'Building..'
                sh  'docker run --rm -i hadolint/hadolint hadolint --ignore DL3007 - <./Dockerfile'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
