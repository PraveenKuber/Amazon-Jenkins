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
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('clean') {
            steps {
                 sh 'mvn clean'
            }
        }

        
    }

  post{

  success{
     echo 'Build is successfull'
  }
    
  failure{
       echo 'Alert, Failure in the build'
   }

  }


}
