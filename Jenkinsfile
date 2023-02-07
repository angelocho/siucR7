pipeline {
    agent any
   options {
      ansiColor('css')
      timestamps()
   }
    stages { 
        stage('Test'){
            post{
                always{
                    junit allowEmptyResults: true, keepLongStdio: true, testResults: 'target/surefire-reports/*xml'
                }
            }
        }
        stage('Build') {
            steps {
                sh '''docker-compose build
                ./mvnw package'''
            }        
        }
        stage('Start') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    } 
}

