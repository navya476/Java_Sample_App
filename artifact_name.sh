#!/bin/bash

def getMavenBuildArtifactName() {
 pom = readMavenPom file: 'pom.xml'
 return "${pom.artifactId}-${pom.version}.${pom.packaging}"
}

artifact_name = getMavenBuildArtifactName()

echo "$artifact_name"
