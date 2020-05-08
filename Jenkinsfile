pipeline {

  agent {
    label 'SLAVE'
  }

  environment {
    NEXUS=credentials('Nexus')
    MAJOR_VERSION="1.0"
  }
  stages {


    stage('Create Archive to Upload') {
      steps {
        sh '''
          cd static
          tar -czf frontend-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz `ls`
        '''
      }
    }

    stage('Upload To Nexus') {
      steps {
        sh '''
          curl -f -v -u $NEXUS --upload-file static/frontend-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz https://nexus.devopsb46.online/repository/frontend-service/frontend-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz
        '''
      }
    }

  }
}