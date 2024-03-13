pipeline {
    agent any
    stages {
     
        stage('test') {
            steps {
                 sh 'mvn clean install -DskipTests'
            }
        }

    }


    
  post{
    
  failure{
       echo 'Failure in the build'
   }

  }


}
