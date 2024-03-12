pipeline {
    agent any
    stages {

        stage('compile') {
            steps {
                sh 'mvn compile'
            }
        }      
    }

  post{
    
  failure{
       echo 'Failure in the compile stage'
   }

  }


}
