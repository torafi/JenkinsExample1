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
	bat """
		
		curl -v -u rafi:Dear@786 -T **/*.war "http://localhost:2020/manager/text/deploy?path=/AntExample1&update=true" 

		echo "Deploy to tomcat"
	 
	
	"""		
	}
	
	}
	
  }
}


