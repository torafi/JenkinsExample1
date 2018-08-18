pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('Code Checkout') {
      parallel {
        stage('Code Checkout') {
          steps {
            git(url: 'https://github.com/mitesh51/AntExample.git', branch: 'master', poll: true)
          }
        }
        stage('Test') {
          steps {
            echo 'Hello'
          }
        }
      }
    }
    stage('build') {
      steps {
        def antHome
        echo 'Build'
        antHome = tool 'apache-ant-1.10.5'
        bat '${antHome}bin/build.xml war'
      }
    }
  }
}
