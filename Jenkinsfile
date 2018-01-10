node {
		try {
			cleanWs()
	/****************************** Git Checkout Stage ******************************/
			stage ('Source Code Checkout') {
				Reason = "GIT Checkout Failed"
				checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/SnehaKailasa23/Java_sample_app.git']]]
				//checkout scm
			}
			stage('Maven Build') {
				Reason = "Maven Build Failed"
				rtMaven.tool = 'maven'							//Defining maven tool //
				// Maven build starts here //
				def mvn_version = tool 'maven'
				withEnv( ["PATH+MAVEN=${mvn_version}/bin"]  ) {
					buildInfo = rtMaven.run pom: 'pom.xml', goals: 'clean install -Dmaven.test.skip=true' 
				}
			}
			stage('Docker'){
				sh 'docker build -t jboss_application .'
				sh 'docker run -it jboss_application'
			}
		}
		catch(Exception e)
		{
			println "In catch block"
			println e
		}
	}
