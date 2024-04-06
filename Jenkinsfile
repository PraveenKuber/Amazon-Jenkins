pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }  



        
        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }

        
        stage('build') {
            steps {
                 sh 'docker build .'
            }
        }

    }

  post{
    
  failure{
       echo 'Failure in the build'
   }

  }


}
