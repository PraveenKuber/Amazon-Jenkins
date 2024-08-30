pipeline {
    agent any

    stages {

        stage('pull') {
            steps {
                git branch: 'parbo', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
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
