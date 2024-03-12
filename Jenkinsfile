pipeline {
    agent any
    stages {

        stage('checkout') {
            steps {
                git Branch: 'main2.0', url: 'https://github.com/Varunkumar2698/Amazon-Jenkins.git'
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
       echo 'Failure in the compile stage'
   }

  }
}
