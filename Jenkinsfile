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
	script{
	def cmd_exec(command) {
    return bat(returnStdout: true, script: "${command}").trim()
	
	cmd_exec('curl -v -u rafi:Dear@786 -T **/*.war "http://localhost:2020/manager/text/deploy?path=/sample&update=true"')
    }
	}
	
		
	}
	
	}
	
  }
}


