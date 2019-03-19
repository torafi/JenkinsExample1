pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('SCM') {
      steps {
        git(url: 'https://github.com/torafi/JenkinsExample1.git', branch: 'master', poll: true)
      }
    }
    stage('Build') {
      steps {
        script {
          def antHome = tool 'Ant';
          bat "${antHome}/bin/ant -d clean war"
        }

        archiveArtifacts(artifacts: '**/*.war', onlyIfSuccessful: true)
      }
    }
	stage ('Deploy') {
	steps{
	
	bat 'C:\Users\Hp PC\Desktop\\GIT_Repositories\\JenkinsExample1\\deploy.bat'
	
	}
	
	}
  }
}