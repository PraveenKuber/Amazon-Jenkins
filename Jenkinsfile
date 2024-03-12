pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/Varunkumar2698/Amazon-Jenkins.git'
            }
        }      
    }

  post{
    
  failure{
       echo 'Failure in the pull stage'
   }

  }


}
