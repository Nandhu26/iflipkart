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
      stage ('Deploy-To-Tomcat') {
         steps {
           sshagent(['tomcat']) {
                sh 'cp -o /home/nandhu1/.jenkins/workspace/flipkart/target/flipkart.war /home/nandhu1/apache-tomcat-8.5.73/webapps'               
              }      
           }       
       } 
    }
   }
