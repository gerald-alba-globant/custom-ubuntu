pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker run -d alpine"
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
