pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Test') {
            steps {
                echo 'Running Tests...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Java app...'
                sh 'javac HelloWorld.java'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulated Deployment...'
                sh 'echo Deployment Completed Successfully!'
            }
        }
    }

    post {
        success { echo 'Pipeline Success' }
        failure { echo 'Pipeline Failed' }
    }
}

