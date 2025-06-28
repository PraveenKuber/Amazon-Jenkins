pipeline {
    agent any

    environment {
        // Optional: extend existing PATH, but don't overwrite it unless needed
        PATH = "/usr/bin:/bin:/opt/homebrew/bin:${env.PATH}"
    }

    stages {
        stage('Pull SCM ') {
            steps {
                echo 'Cloning from GitHub...'
                git branch: 'qa_1', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }

        stage('Validate') {
            steps {
                echo 'Running mvn validate...'
                sh 'mvn validate'
            }
        }

        stage('Compile') {
            steps {
                echo 'Running mvn compile...'
                sh 'mvn compile'
            }
        }

        stage('Test') {
            steps {
                echo 'Running mvn test...'
                sh 'mvn test'
            }
        }

        stage('Build') {
            steps {
                echo 'Running mvn clean install...'
                sh 'mvn clean install'
            }
        }
    }

    post {
        success {
            echo '✅ Build Success!'
        }

        failure {
            echo '❌ Build Failed!'
        }
    }
}
