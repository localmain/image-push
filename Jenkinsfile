pipeline {
    agent any
	

 stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: git@github.com:localmain/devops-practical-2.git
             
          }
        }
       

      stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t developer:latest .' 
                sh 'docker tag developer munna1998/developer:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
               withCredentials([string(credentialsId: 'docker', variable: 'docker')]) {
                sh  'docker push munna1998/developer:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
