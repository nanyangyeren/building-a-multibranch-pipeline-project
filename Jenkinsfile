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
                 sh './jenkins/scripts/build.sh' 
            }
        }
        stage('Deliver for development') {
            steps {
                sh './jenkins/scripts/deploy-for-test.sh'
            }
        }
    }
}
