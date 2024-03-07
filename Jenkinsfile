pipeline {
    agent any

    stages {

        stage('pull') {
            steps {
                git 'https://github.com/PraveenKuber/Amazon.git'
            }
        }

        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }


    }

  post{
    
  failure{
       echo 'Failure in the build'
   }

  }


}
