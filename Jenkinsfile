pipeline {
    agent any
   options {
      ansiColor('css')
      timestamps()
   }
    stages { 
        stage('maven' {
            steps {
            sh './mvnw package'
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
