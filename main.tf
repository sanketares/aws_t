provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sanket" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
  subnet_id     = aws_subnet.my_subnet.id 
  
}

module "vpc" {
  source           = "./modules/vpc"
  cidr_block       = "10.0.0.0/16"
  subnet_cidrs     = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_count     = 2
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id          = "ami-053b0d53c279acc90"
  instance_type   = "t2.micro"
  subnet_id       = module.vpc.subnet_ids[0]
  vpc_id          = module.vpc.vpc_id
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
  subnet_id     = aws_subnet.my_subnet.id 
}


resource "aws_instance" "sanket_ins" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"
  tags = {
    Name = "sanket"
  }
}
resource "aws_instance" "knk" {
  instance_type = "t2.micro"
  ami           = "ami-053b0d53c279acc90"

}

