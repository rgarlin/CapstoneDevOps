pipeline {
    agent any

    stages {
        stage('Building') {
            steps {
                echo 'Building..'
                sh "sudo /home/ubuntu/UdacityCapstoneDevOps/build_docker.sh" 
            }
        }
        stage('DockerHub Push') {
            steps {
                echo 'Uploading..'
                script {
                  withCredentials([credentialsId: 'dockerhub', variable: 'dockerhubPW']) {
                     sh "sudo docker login -u rgarlin -p ${dockerhubPW}"
                     sh 'docker push rgarlin/flask:latest)'
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



steps {
  script {
    withDockerRegistry([credentialsId: 'something', url: 'docker.io/my-account']) {
      sh 'docker push my-account/image:version)'
    ....
  }
}
