provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sanket" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sanket-s3-demo-xyz"
}

resource "aws_dynamodb_table" "terraform_lock1" {
  name         = "terraform-lock1"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}


resource "aws_instance" "santest" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
}
resource "aws_instance" "knk" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
}
resource "aws_instance" "mn" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
}