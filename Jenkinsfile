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
              
                sh 'docker build -t bowl .'  
                sh 'docker tag web munna998/bowl:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
		   withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) {
		    sh  'docker push munna998/bowl:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
}
