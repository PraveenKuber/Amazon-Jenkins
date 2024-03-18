pipeline {
 agent any
 
 stages {
 stage('Build') {
 steps {
 git branch: 'feature-branch' <url of feature 
branch>
 
 sh 'mvn clean install' 
 }
 }
 stage('Test') {
 steps {
 sh 'mvn test'
 
 junit '**/target/surefire-reports/*.xml'
 
 // Set a variable based on test results
 script {
 testsPassed = currentBuild.result == 
'SUCCESS'
 }
 }
 }
 stage('Merge to Main') {
 when {
 expression { testsPassed == true }
 }
 steps {
 
 git branch: 'main', url: <url of main branch>
 
 sh 'git merge feature-branch 
 
 sh 'git push origin main'
 }
 }
 }
 
 post {
 failure {
 echo 'Tests failed or merge failed.
 }
 }
}
