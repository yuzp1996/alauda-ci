pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    }
    environment { 
        CC = 'clang'
    }
    

    stages {
        stage("check"){
            steps{
                script{
                    BRANCH_NAME = sh(script:"git rev-parse --abbrev-ref HEAD", returnStdout:true).trim()
                    VERSION = "1"
                }

            }
        }
       stage("ShowGITData"){
          steps{
              echo "show git data。。。。"
              sh "git show-ref --tags"
              sh "printenv"
          }
       }
       stage("ReleaseBranch"){
           when{
               expression{
                   BRANCH_NAME ==~ /release.*/ && VERSION != ""
               }
           }
           steps{
               echo "in test branch...."
           }
       }
        stage('Build') {
            steps {
               sh "env"
               sh "echo ${params.PERSON}"
               echo "Hello ${params.PERSON}"
               
            }
        }
        stage("ParallelStage"){
            parallel{
                stage('CodeScan'){
                    steps{
                        echo "thisis code scan"
                        sleep 5
                    }
                }
                stage('WhatEver'){
                    steps{
                        echo "what ever it is .."
                        sleep 6
                    }
                }
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
