pipeline {
    agent any
    tools {
       maven 'maven'
    }
    stages {
      stage('Build'){
        steps{
          sh 'mvn clean package'
        }
      }
      stage('Uploading War To Nexus'){
        steps{
          nexusArtifactUploader artifacts: [
              [
                  artifactId: 'flipkart', classifier: '', 
                  file: 'target/flipkart.war',
                  type: 'war'
              ]
          ],
          credentialsId: '',
          groupId: 'com.flipkart',
          nexusUrl: '3.110.27.188',
          nexusVersion: 'nexus3', 
          protocol: 'http', 
          repository: 'iflipkart-release', 
          version: '1.0'
        }
      }
    }
}
