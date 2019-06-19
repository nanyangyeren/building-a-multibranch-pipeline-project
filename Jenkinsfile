pipeline {
    agent {
        docker {
            image 'huilianbuild:1.0'
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
               /bin/bash './jenkins/scripts/deploy-for-test.sh'
            }
        }
    }
}
