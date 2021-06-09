pipeline {
  
  agent {
        docker { image 'node:14-alpine' }
  }
  
  environment {
    registry = "leminhthu/simple-java-web"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
        
  stages {
    // Building Docker images
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
    
     // Uploading Docker images into Docker Hub
    stage('Upload Image') {
     steps{    
        script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
          }
      }
    }
  }
}