pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Code Checkout') {
      steps {
        git(url: 'https://github.com/mitesh51/AntExample.git', branch: 'master', poll: true)
      }
    }
  }
}