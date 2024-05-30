pipeline {
    agent any
    stages {
        stage('Setup Python Virtual ENV'){
         steps {
            sh '''
            chmod +x env-setup.sh
            ./env-setup.sh
            '''
            }   
        }
        stage('Setup Gunicorn Setup') {
            steps {
                sh '''
                chmod +x gunicorn-setup.sh
                ./gunicorn-setup.sh
                '''
            }
        }
        stage('Setup NGINX Setup') {
            steps {
                sh '''
                chmod +x nginx-setup.sh
                ./nginx-setup.sh
                '''
            }
        }
    }
}