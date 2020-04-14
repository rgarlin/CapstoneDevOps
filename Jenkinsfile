pipeline {
    agent any

    stages {
        stage('Linting') {
            steps {
                echo 'Building..'
                sudo docker run --rm -i hadolint/hadolint hadolint --ignore DL3007 - <./Dockerfile
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
