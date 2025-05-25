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
                sh 'docker exec static-site-container /usr/share/nginx/html/build_remote.sh'
            }
        }
    }
}