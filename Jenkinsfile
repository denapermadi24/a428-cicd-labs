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
                sh './jenkins/scripts/deliver.sh'
                script {
                    echo 'Waiting for 1 minute before proceeding...'
                    sleep time: 60, unit: 'SECONDS'
        }  
                sh './jenkins/scripts/kill.sh'
    }
}

    }
}