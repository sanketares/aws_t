terraform {
  backend "s3" {
    bucket = "mansitasknew"
    
    key   = "global/state/terraform.tfstate" 
    region = "ap-southeast-2"
    dynamodb_table = "terraform-locks"
    
  }
}

 