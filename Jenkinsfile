pipeline {
  environment {
    registry = "sforcloud/jenkinsdocker"
    registryCredential = 'asus!1234'
  }
  agent any
  stages {
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}
