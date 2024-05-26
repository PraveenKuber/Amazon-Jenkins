
pipeline {
    agent any
 
    stages {
        stage('Pull') {
            steps {
git branch: 'main', url: 'https://github.com/druti33/Amazon-Jenkins-new.git'
            }
        }
 
        stage('Compile with Maven') {
            steps {
                sh 'mvn compile'
            }
        }
 
        stage('Build with Maven') {
            steps {
                sh 'mvn clean install'
            }
        }
 
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myappimage:latest .'
            }
        }
    }
 
    post {
        always {
            cleanWs()
        }
    }
}
