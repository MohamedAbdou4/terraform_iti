terraform {
  backend "s3" {
    bucket         = "terraform-lab-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "labday2Terraform"
  }
}
