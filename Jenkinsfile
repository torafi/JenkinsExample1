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
        echo 'Build'
        bat '%ANT_HOME%/bin/ant.bat war'
      }
    }
  }
  environment {
    ANT_HOME = 'apache-ant-1.10.5'
  }
}