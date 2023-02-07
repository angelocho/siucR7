pipeline {
    agent any
   options {
      ansiColor('css')
      timestamps()
   }
    stages { 
        stage('maven') {
            steps {
            sh './mvnw package'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        post{
            always{
                junit allowEmptyResults: true, keepLongStdio: true, testResults: 'target/surefire-reports/*xml'
            }
        }
        stage('Start') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    } 
}

