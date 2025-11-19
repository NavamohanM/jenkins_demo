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
                bat 'test.bat'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Java app...'
                bat 'javac HelloWorld.java'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulated Deployment...'
                bat 'echo Deployment Completed Successfully!'
            }
        }
    }

    post {
        success { echo 'Pipeline Success' }
        failure { echo 'Pipeline Failed' }
    }
}
