pipeline {
    agent {
        docker { image 'node:20.11.1-alpine3.19' }
    }
    stages {
        stage('Test1') {
            steps {
                sh 'node --version'
            }
        }
    }
}