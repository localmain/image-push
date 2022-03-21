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
              
                sh 'docker build -t beast1998:latest .' 
                sh 'docker tag beast1998 oneandonlybeast1998/beast1998:$BUILD_NUMBER'
               
          }
        } 
    }
}
