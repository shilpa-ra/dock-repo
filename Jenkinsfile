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
                    sh 'sudo apt update'
                    sh 'curl -fsSL https://get.docker.com -o get-docker.sh'
                    sh 'sh get-docker.sh'
                    sh 'sudo docker info'
                    sh 'sudo reboot'
                    sh 'docker info'


          }
         }
      }
     }
