pipeline {
agent any
tools {
  terraform 'terraform'
}
options { ansiColor('xterm') } 
 stages { 
   stage ('Checkout Repo') { 
     steps { 
       cleanWs()
       sh  'git clone https://github.com/tobiasbuhmann/azure-jenkins.git'
      }
      } 

stage ('Terraform version') { 
  steps {
   sh '''
    terraform --version
   ''' 
    }
    }
    
  stage ('Terraform init') { 
  steps {
   sh '''
   cd terraform-test/
   terraform init
   ''' 
   }
   }
   
 stage ('Terraform apply') { 
  steps {
   sh '''
   cd terraform-test/
   terraform apply --auto-approve
   ''' 
   }
        post { 
        always { 
            cleanWs()
         }
        }
       }
  }
}
