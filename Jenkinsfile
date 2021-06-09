pipeline {
  
    agent any
  
    environment {
      registry = "leminhthu/simple-java-web"
      registryCredential = 'dockerhub_id'
      dockerImage = ''
    }
        
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