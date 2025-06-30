pipeline {
    agent any
    environment {
        // Use PATH+EXTRA to append to PATH properly
        PATH = "/usr/bin:/bin:/opt/homebrew/bin"
    }
    stages {

        stage('pull scm trigger') {
            steps {
                git branch: 'main', url: 'https://github.com/PraveenKuber/Amazon-Jenkins.git'
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

  success{
     mail to: 'abc.test.demo1234@gmail.com',  
         subject: "SUCCESS: Job '${env.JOB_NAME}  [${env.BUILD_NUMBER}]'",  
         body: "Good news! Build succeeded: ${env.BUILD_URL}" 

  }
    
  failure{
       mail to: abc.test.demo1234 @gmail.com',         
           subject:"FAILURE:Job'${env.JOB_NAME}[${env.BUILD_NUMBER}]'",           
           body: "Unfortunately, build failed: ${env.BUILD_URL}" 
   }

  }


}
