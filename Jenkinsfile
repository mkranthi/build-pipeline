
pipeline {
    agent any 
    stages {
        stage ('checkout') {
            steps {
                git branch: 'develop', url: 'https://github.com/mkranthi/build-pipeline.git'
            }
        }
        stage('executing terraform init') {
            steps {
                sh 'terraform init'
    }
}
        stage('executing terraform paln') {
            steps {
                sh 'terraform plan'
    }
}
        
        stage('executing terraform destroy') {
            steps {
                sh 'terraform destroy -auto-approve'
    }
}
}
}
