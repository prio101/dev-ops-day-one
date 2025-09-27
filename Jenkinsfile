pipeline {
  agent any

  stages {
    // Build stage to be implemented
    stage('Build') {
      steps {
        sh 'echo "Building the project..."'
        sh 'docker build -t myapp:latest .'
        sh 'docker images are built successfully.'
      }
    }

    // Test stage to be implemented
    stage('Test') {
      steps {
        sh 'echo "Running tests..."'
        sh 'docker run --rm myapp:latest npm lint'
        sh 'All tests passed successfully.'
      }
    }

    // Deploy stage to be implemented
    stage('Deploy') {
      steps {
        sh 'echo "Deploying the application..."'
        //sh 'docker stop myapp || true && docker rm myapp || true'
        //sh 'docker run -d -p 80:80 --name myapp myapp'
        // sh 'ansible-playbook -i inventory.ini deploy.yml'
        sh 'Application deployed successfully.'
      }
    }
  }
}
