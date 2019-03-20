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
		
		c:\\commands\\curl.exe -v -u rafi:Dear@786 -T C:\\Program Files (x86)\\Jenkins\\jobs\\JenkinsExample1\\branches\\master\\builds\\lastStableBuild\\archive\\dist\AntExample.war "http://localhost:2020/manager/text/deploy?path=/AntExample&update=true" 

		echo "Deploy to tomcat"
	 
	
	"""		
	}
	
	}
	
  }
}


