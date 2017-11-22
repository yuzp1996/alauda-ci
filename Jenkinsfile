pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    }
    environment { 
        CC = 'clang'
    }

    stages {
        stage('Build') {
            steps {
               sh "env"
               sh "echo ${params.PERSON}"
               echo "Hello ${params.PERSON}"
               input "what amazing job.."
               
            }
        }
        stage('Test') {
            steps {
                echo "this is test"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
