pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {
            
        stage('pull scm') {
            steps {
                git branch: 'qa_3', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }
        stage('Validate') {
            steps {
                sh 'mvn validate'
            }
        }

        stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }

        
    }

  post{

  success{
     echo 'Build success'
  }
    
  failure{
       echo 'Failure in the build'
   }

  }


}
