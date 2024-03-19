pipeline {
	agent any
	stages {
		stage('Checkout') {
            steps {
                // Checkout the feature branch
                git branch: 'main', url: 'https://github.com/mounasetty/Amazon-Jenkins.git'
            }
        }
		stage ('build') {
			steps {
				sh 'mvn clean install'
			}
		
		}
		stage ('test') {
			
			steps {
				sh 'mvn test'
			}
	
	}
}
}
