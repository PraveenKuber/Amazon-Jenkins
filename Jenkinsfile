pipeline {
    agent {label'windows-agent-pavani'}
      stages {

        stage('pull scm new test') {
            steps {
                git branch: 'main', url: 'https://github.com/Kidduu2123/Amazon-Jenkins.git'
            }
        }
        stage('compile test') {
            steps {
                bat 'mvn compile'
            }
        }

        stage('build project') {
            steps {
                 bat 'mvn clean install'
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
