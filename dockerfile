pipeline {
    agent {label 'dock'}
     stages {
        stage ('vcs') {
            steps {
                git url: "https://github.com/shilpa-ra/docker-repo.git",
                branch: "main"
              }
               }

               stage ('docker') {
                steps {
                    sh 'docker info'
                    sh 'sudo reboot'
                    sh 'docker info'


          }
         }
      }
     }
