pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'testing', url: 'https://github.com/skbasha-devops/Amazon-Jenkins'
            }
        }
        stage('test stage 2') {
            steps {
                sh 'mvn test'
            }
        }

        stage('stage 3') {
            steps {
                 sh 'mvn clean install'
            }
        }
        
    }
}
