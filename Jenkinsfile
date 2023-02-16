pipeline {
agent any
tools {
  terraform 'terraform'
}
 stages { 
   stage ('Checkout Repo') { 
     steps { 
       cleanWs()
       bat  'git clone https://github.com/tobiasbuhmann/azure-jenkins.git'
      }
      } 

stage ('Terraform version') { 
  steps {
   bat '''
    terraform --version
   ''' 
    }
    }
    
  stage ('Terraform init') { 
  steps {
   bat '''
   cd azure-jenkins/
   terraform init
   ''' 
   }
   }
   
 stage ('Terraform apply') { 
  steps {
   bat '''
   cd azure-jenkins/
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
