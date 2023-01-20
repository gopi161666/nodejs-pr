 	pipeline {
    agent any
    tools {nodejs "node10" }
    environment {
        NODE_ENV='production'
    }
    
  
    stages {
        stage('source') {
            steps {
               git ''https://github.com/gopi161666/nodejs-pr.git
               sh 'cat app.js'
            }
            
        }
        
         stage('build') {
             environment{
                 NODE_ENV='StagingGitTest'
             }
             
            
            steps {
             echo NODE_ENV
             withCredentials([string(credentialsId: 'e8f8ff88-49e0-433a-928d-36a518cd30d6', variable: 'secver')]) {
                // some block
                echo secver
            }
                         sh 'npm install'
            }
            
        }
        
         stage('saveArtifact') {
            steps {
              archiveArtifacts artifacts: '**', followSymlinks: false
            }
            
        }
        
        
        
    }
}
