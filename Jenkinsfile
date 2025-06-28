pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {

        stage('pull scm') {
            steps {
                git branch: 'main', url: 'https://github.com/dhanu0395/Amazon-Jenkins.git'
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
        
        stage('deloy') {
           steps {
               echo 'Deploying for pr branch'
             } 
        }  

      }

        post {
           always {
                echo 'Pipeline execution complete.'
              }

           success {
               echo 'Sending success email...'
        // Send email on successful build
              emailext (
                   to: 'team@example.com', // Replace with your team's email or a specific recipient
                   subject: "Jenkins Build SUCCESS: ${env.JOB_NAME} - #${env.BUILD_NUMBER}",
                   body: """
                        Pipeline: ${env.JOB_NAME}
                        Build Number: #${env.BUILD_NUMBER}
                        Status: SUCCESS
                        Build URL: ${env.BUILD_URL}
                        Check console output for details.
                      """,
                        attachLog: true // Attaches the build log to the email
                      )
                 }
     
            failure {
                echo 'Sending failure email...'
               // Send email on failed build
                  emailext (
                       to: 'team@example.com, alerts@example.com', // Multiple recipients possible
                       subject: "Jenkins Build FAILED: ${env.JOB_NAME} - #${env.BUILD_NUMBER}",
                       body: """
                            Pipeline: ${env.JOB_NAME}
                            Build Number: #${env.BUILD_NUMBER}
                            Status: FAILED
                            Build URL: ${env.BUILD_URL}
                                Please investigate the console output for errors.
                           """,
                            attachLog: true // Attaches the build log to the email
                       ) 
                   }
}      
