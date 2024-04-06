pipeline {
   angent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }  



        
        stage('install') {
            steps {
                sh 'mvn clean install'
            }
        }


        
        stage('build') {
            steps {
                 sh 'docker build -f Dockerfile .'
 
            }
        }

    }

  post{
    
  failure{
       echo 'Failure in the build'
   }

  }


}
