pipeline {
    agent any
   options {
      ansiColor('css')
      timestamps()
   }
    stages { 
        stage('Test'){
            steps{
                sh './mvnw package'
                post{
                    always{
                        junit allowEmptyResults: true, keepLongStdio: true, testResults: 'target/surefire-reports/*xml'
                    }
                }
            }

        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }        
        }
        stage('Start') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    } 
}

