pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {

        stage('pull scm') {
            steps {
                git branch: 'test', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }

        stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }
    }

}
