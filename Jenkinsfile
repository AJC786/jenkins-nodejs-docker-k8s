pipeline {
    agent any
    environment {
      dockerimagename = "ajaydocker55/nodeapp"
      dockerhub = credentials('dockerhub')
    }
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/AJC786/jenkins-nodejs-docker-k8s.git', branch: 'main'
            }
        }
        stage('Build image') {
            steps {
                sh 'docker build -t $dockerimagename .'
            }
        }
        stage('publish image to dockerhub') {
            steps {
                sh 'docker image ls'
                sh 'docker logout'
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push ajaydocker55/nodeapp'
            }
        }
    }
}
