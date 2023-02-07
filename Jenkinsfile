pipeline {
    agent any
   options {
      ansiColor('css')
      timestamps()
   }
        stage('Build') {
            steps {
                sh '''docker-compose build
                ./mvnw package'''
            }        
            post{
                always{
                    junit allowEmptyResults: true, keepLongStdio: true, testResults: 'target/surefire-reports/*xml'
            }
        }

        }
        stage('Start') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    } 
}

