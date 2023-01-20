 	pipeline {
    agent any
    tools {nodejs "node14" }
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
             withCredentials([string(credentialsId: 'dfe083f8-bc52-4af3-975c-6dbc81661621', variable: 'secver')]) {
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
