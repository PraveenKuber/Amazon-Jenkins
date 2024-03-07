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
                sh 'cd Amazon && mvn compile'
            }
        }

        stage('build') {
            steps {
                 sh 'cd Amazon && mvn clean install'
            }
        }


    }

  post{
    
  failure{
       echo 'Failure in the build'
   }

  }


}
