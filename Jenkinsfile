pipeline {
    agent {
        docker {
            image 'huilianbuild:1.1'
            args '-p 3000:3000 -p 5000:5000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh '''#!/bin/bash
                 echo "hello world"
                   env 
                   node -v
                     '''
            }
        }
    }
}
