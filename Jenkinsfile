pipeline {
    agent any
    stages {

        stage('checkout') {
            steps {
                git 'https://github.com/Varunkumar2698/Amazon-Jenkins.git'
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
        stage('test') {
            steps {
                sh 'mvn clean install -DskipTests'
            }
        }
    }
  post{
    
  failure{
       echo 'Failure in the compile stage'
   }

  }
}
