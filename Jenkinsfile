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

        stage('deploy') {
            steps {
                echo 'Deploying for PR branch'
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution complete.'
        }

        success {
            echo 'Sending success email...'
            emailext (
                to: 'dhanu.m03@outlook.com',
                subject: "Jenkins Build SUCCESS: ${env.JOB_NAME} - #${env.BUILD_NUMBER}",
                body: """
                    Pipeline: ${env.JOB_NAME}
                    Build Number: #${env.BUILD_NUMBER}
                    Status: SUCCESS
                    Build URL: ${env.BUILD_URL}
                    Check console output for details.
                """,
                attachLog: true
            )
        }

        failure {
            echo 'Sending failure email...'
            emailext (
                to: 'dhanu.m03@outlook.com',
                subject: "Jenkins Build FAILED: ${env.JOB_NAME} - #${env.BUILD_NUMBER}",
                body: """
                    Pipeline: ${env.JOB_NAME}
                    Build Number: #${env.BUILD_NUMBER}
                    Status: FAILED
                    Build URL: ${env.BUILD_URL}
                    Please investigate the console output for errors.
                """,
                attachLog: true
            )
        }
    } // ← This was missing!
}

