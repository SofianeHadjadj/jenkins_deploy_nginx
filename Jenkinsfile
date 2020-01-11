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
        withCredentials([
                string(credentialsId: 'token_kubectl', variable: 'TOKEN'),
                string(credentialsId: 'server_bubectl', variable: 'SERVER')
            ]) {
            sh "kubectl apply -f nginx-deployment.yaml --token $TOKEN --server $SERVER"
        }
    }
    stage('Deploy Nginx Step 2') {
        withCredentials([
                string(credentialsId: 'token_kubectl', variable: 'TOKEN'),
                string(credentialsId: 'server_bubectl', variable: 'SERVER')
            ]) {
            sh "kubectl apply -f nginx-service.yaml --token $TOKEN --server $SERVER"
        }
    }    
}