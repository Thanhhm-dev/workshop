pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Build image HTML'
                sh '/var/jenkins_home/build_app.sh'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploy...'
            }
        }
    }
}