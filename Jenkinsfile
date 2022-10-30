pipeline {
    agent any 
	
 stages {
      stage('checkout') {
	      steps {  
                  git branch: 'main', url: 'https://github.com/localmain/image-push.git'
             
          }
        }
       

      stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t web:latest .' 
                sh 'docker tag web munna998/web:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
            withCredentials([string(credentialsId: 'jenkins-docker', variable: 'Docker')]) {
		    sh  'docker push munna998/web:latest'
		    sh  'docker push munna998/web:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
}
