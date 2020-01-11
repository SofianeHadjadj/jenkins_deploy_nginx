node {
    stage('Clone repository') {
    /* Cloning the Repository to our Workspace */
    checkout scm
  }

    stage('Build image') {
    /* This builds the actual image */
    app = docker.build("nginx:latest")
  }
    stage('Deploy Nginx Step 1') {
    /* This will deploy nginx image using Kubernetes*/
        steps {
            sh "kubectl apply -f nginx-deployment.yaml"
        }
    }
    stage('Deploy Nginx Step 2') {
        steps {
            sh "kubectl apply -f nginx-service.yaml"
        }
    }    
}