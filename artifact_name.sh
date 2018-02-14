#!/bin/bash

getMavenBuildArtifactName() {
 pom = readMavenPom file: 'SpringMVCSecurityXML/pom.xml'
 echo "${pom.artifactId}-${pom.version}.${pom.packaging}"
}

#artifact_name = 
getMavenBuildArtifactName()

#echo "$artifact_name"
