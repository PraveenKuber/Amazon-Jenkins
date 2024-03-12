pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/Varunkumar2698/Amazon-Jenkins.git'
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
