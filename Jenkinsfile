pipeline{
     
     agents { 'label' 'java' }
     stages{
           stage(" Build the farm web app code"){
                    steps{
                    echo" generating the war file"
                    sh "/usr/bin/mvn install"
                    }            
           }

           stage(" static code analyser"){
                    steps{
                    echo" scaning the source file"
                    sh "/usr/bin/mvn verify sonar:sonar"
                    }
           }
           stage(" deploy on tomcat8"){       
                   steps{
                   echo" deploy on tomcat path /var/lib/tomcat8/webapps"
                   sh "service tomcat8 stop"
                   sh "rm -f /var/lib/tomcat8/webapps/my-farm.war"
                   sh "cp target/my-farm.war /var/lib/tomcat8/webapps/"
                   sh "service tomcat8 start"  
                   }
          }

          stage(" monitor"){
                  steps{
                  sh "sleep 5"
                  sh "./monitoring.sh"
                  }
          }
    }
}
