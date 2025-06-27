pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {
            
        stage('pull scm') {
            steps {
                git branch: 'main', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
            }
        }

	stage('Validate'){
		steps{
			sh 'mvn validate'
		}
	}
        stage('compile new') {
            steps {
                sh 'mvn compile'
            }
        }
	stage('test'){
            steps {
		   sh 'mvn test'
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
