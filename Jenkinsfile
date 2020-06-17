pipeline {
   agent any
  // agent { dockerfile true}
    tools {
        maven 'Maven-2'
        jdk 'Java jdk'
    }
    stages {
        stage ('Initialize') {
            steps {
                bat '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build Maven') {
            steps {
                //bat 'mvn -Dmaven.test.failure.ignore=true install' 
				bat 'mvn clean package'
            }
          }
		  stage('Build Docker image') {
		  agent{
		  docker { image 'myapp' }
		  }
		   
         steps {
			 
			 docker build --tag chika1984/piyush123/myapp:2.0.0:1.0 .
              // bat 'docker build -t chika1984/piyush123/myapp:2.0.0 .'
            }     
				
            }
          }
}		  