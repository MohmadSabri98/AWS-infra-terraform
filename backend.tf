terraform {
  backend "s3" {
    bucket         = "terraform-fstatebucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_table"
  }
}