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
                  file: 'target/flipkart-1.0.war',
                  type: 'war'
              ]
          ],
          credentialsId: '',
          groupId: 'com.flipkart',
          nexusUrl: '172.31.15.119',
          nexusVersion: 'nexus3', 
          protocol: 'http', 
          repository: 'http://3.110.27.188:8081/repository/iflipkart-release', 
          version: '1.0'
        }
      }
    }
}
