pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {

        stage('pull data') {
            steps {
                git branch: 'qa_4.0', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }
        stage('test stage 2') {
            steps {
                sh 'mvn test'
            }
        }

            steps {
                junit '**/target/surefire-reports/*.xml'
            }
        }
        
    }
}
