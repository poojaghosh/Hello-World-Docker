pipeline {
  agent any
  //agent { Dockerfile true}
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
		  docker { image 'myapp-0.0.1-SNAPSHOT' }
		  }
         steps {
			bat ('docker build -t chika1984/myapp-0.0.1-SNAPSHOT:2.0.0 .')
          }     
				
            
          }
}	
}	  