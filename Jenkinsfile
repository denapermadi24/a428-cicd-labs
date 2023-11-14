pipeline {
    agent {
        docker {
            image 'node:16-buster-slim'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Test') { 
            steps {
                sh './jenkins/scripts/test.sh' 
            }
        } 


        stage('Manual Approval') {
            steps {
                input "Lanjutkan ke tahap Deploy?"
            }
        }

        stage('Deploy') {
            steps {
                echo "Waiting for 1 minute before finishing the pipeline"
                sleep(time: 60, unit: 'SECONDS')
                echo "Post Deploy steps here"
            }
        }
    }
}