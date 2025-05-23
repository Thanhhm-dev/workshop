pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Build image HTML'
                // sh 'docker build -t my-static-site .'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploy...'
            }
        }
    }
}