pipeline {
    agent any
    tools {
       terraform 'terraform'
    }
    stages {
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
