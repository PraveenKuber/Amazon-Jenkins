pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {

        stage('pull scm') {
            steps {
                git branch: 'main', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }
        stage('validate') {
            steps {
                sh 'mvn validate'
		}
		}
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('clean') {
            steps {
                 sh 'mvn clean'
            }
        }

        

  post{

  success{
     echo 'Build success'
  }
    
  failure{
       echo 'Failure in the build'
   }

  }


}
