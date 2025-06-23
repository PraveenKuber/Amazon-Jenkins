pipeline {
    agent any
    stages {
      feature-update-readme
        stage('Build C') {


        stage('pull scm') {
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
       main
            steps {
                echo 'Running Pipeline for Branch C'
            }
        }
    }
}
