pipeline {
    agent any
	

 stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/ONEANDONLYBEAST98/devops-practical-2.git'
             
          }
        }
       

      stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t developer:latest .' 
                sh 'docker tag developer oneandonlybeast1998/developer:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
               withCredentials([string(credentialsId: 'docker', variable: 'docker')]) {
                sh  'docker push oneandonlybeast1998/developer:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
