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
                sh "sudo /home/ubuntu/UdacityCapstoneDevOps/run_docker.sh"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'

            }
        }
    }
}
