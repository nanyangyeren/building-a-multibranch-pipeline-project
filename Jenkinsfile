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
                echo 'Hello, '

                sh '''#!/bin/bash
                    echo "Who I'm $SHELL"
                    ./jenkins/scripts/deploy-for-test.sh  
                '''
            }
        }
    }
}
