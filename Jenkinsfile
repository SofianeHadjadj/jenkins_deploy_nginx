node {
    stage('Clone repository') {
    /* Cloning the Repository to our Workspace */
    checkout scm
  }

    stage('Build image') {
    /* This builds the actual image */
    app = docker.build("nginx:v1")
  }
    stage('Deploy Nginx ') {
    /* This will deploy nginx image using Kubernetes*/
        steps {
            sh """
            kubectl create -f nginx-service.yaml
            kubectl create -f nginx-deployment.yaml
            """
        }
    }
}