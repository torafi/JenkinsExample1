pipeline {
  agent {
    node {
      label 'master'
    }

  }
	parameters {
    string(name: 'server', defaultValue: "http://localhost:2020")
    string(name: 'Tomcat_username', defaultValue: "rafi")
	string(name: 'Tomcat_password', defaultValue: "Dear@786")
	string(name: 'jenkins_artifacts', defaultValue: "E:\\Sample_Code")
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
        
        stash includes: 'dist/**/*', name: 'builtSources'
      }
    }
    stage('Move the Build'){
    steps {
    dir("${params.jenkins_artifacts}"){
      
	  unstash 'builtSources'
    
    }  
    
  }
}
    
    
	stage ('Deploy') {
	steps{
	    
	    
	bat """
		echo "${params.Tomcat_username}"
		c:\\commands\\curl.exe -v -u ${params.Tomcat_username}:${params.Tomcat_password} -T "${params.jenkins_artifacts}\\dist\\AntExample.war" "${params.server}/manager/text/deploy?path=/AntExample&update=true" 
	
	"""		
	}
	
	}
	
  }
}


