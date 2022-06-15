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
              
                sh 'docker build -t web:latest .' 
                sh 'docker tag web munna998/web:$BUILD_NUMBER'
 
               
          }
      } 
      stage('Docker push'){
           steps {
              withCredentials([string(credentialsId: 'munna998', variable: 'papu')]) {
                sh  'docker push munna998/web:$BUILD_NUMBER' 
		          
           }

           }
      }
   }
}
