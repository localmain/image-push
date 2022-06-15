pipeline {
	agent {
	    label "slave"
}		
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'main', url: 'https://github.com/localmain/devops-practical-2.git'
             
          }
        }
       

      stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t developer:latest .' 
                sh 'docker tag developer munna998/developer:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
               withCredentials([string(credentialsId: 'Docker', variable: 'docker')]) {
                sh  'docker push munna998/developer:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
}
