pipeline {
    agent any
 stages {
    stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/tinphancr7/jenkins-github.git'
            }
        }
      
    stage('Publish image to Docker Hub') {
          
        steps {
            withDockerRegistry(credentialsId: "docker-hub", url: "https://index.docker.io/v1/") {
                sh 'docker build -t tinphancr7/jenkins-github1 .'
                sh 'docker push tinphancr7/jenkins-github1'
        }
                  
          }
        }
     
  stage('remote ssh') {
          
            steps {
       sshagent(['ssh-agent']) {
         sh 'ssh -o StrictHostKeyChecking=no -l ubuntu 54.221.33.13 touch text.txt'
}
                  
          }
        }
     
 }
}