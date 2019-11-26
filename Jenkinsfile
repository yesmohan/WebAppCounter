pipeline{
    
    agents { 'label' 'linux-build'}
    stages{

        stage("build-the-source-code"){
             steps{
                 sh "/usr/share/maven/bin/mvn clean install"
            }
        
        }
        stage("static code analyser"){
             steps{
                 sh "/usr/share/maven/bin/mvn verify sonar:sonar"
            }

        }
       stage("deploy to QA-1"){
             steps{
                 sh "anisble-playbook install-war.yml"
            }

        }
       stage("deploy to QA-2"){
             steps{
                 sh "docker build -t my-farm:v1 ."
            }

        }
       stage("run selenium test on QA"){
             steps{
                 echo "java -jar selenium-server.jar"
            }

        }

   }

}
