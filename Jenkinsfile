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
                /bin/bash 'npm install'
            }
        }
        // stage('Test') {
        //     steps {
        //         /bin/bash './jenkins/scripts/test.sh'
        //     }
        // }
        stage('Deploy for production') {
            steps {
                /bin/bash './jenkins/scripts/deploy-for-test.sh'
                // /bin/bash './jenkins/scripts/deploy-for-production.sh'
                // input message: 'Finished using the web site? (Click "Proceed" to continue)'
                // /bin/bash './jenkins/scripts/kill.sh'
            }
        }
    }
}
