pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'qa_4.0', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
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
