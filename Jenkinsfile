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
                sh 'cp /home/nandhu1/.jenkins/workspace/flipkart/target/flipkart.war /home/nandhu1/apache-tomcat-8.5.73/webapps'
                sh '/home/nandhu1/apache-tomcat-8.5.73/bin/startup.sh'
                
              }      
           }       
       } 
    }
   }
