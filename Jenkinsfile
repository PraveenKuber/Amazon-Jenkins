pipeline {
    agent any
    stages {

        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/sathi031998/Amazon-Jenkins.git'
            }
        }

        stage('compile') {
            steps {
       
                sh 'mvn compile'
            }
        }
        
 
        stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }

    }

  post{
    
     success {
            // Send email notification on success
            emailext subject: 'Pipeline Successful',
                      body: 'Your pipeline has completed successfully.',
                      to: 'mounasetty14@gmail.com'
        }
          failure {
            // Send email notification on failure
            emailext subject: 'Pipeline Failed',
                      body: 'Your pipeline has failed. Please investigate.',
                      to: 'mounasetty14@gmail.com'
        }
    }
} 
 
