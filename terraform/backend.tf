terraform {
  backend "s3" {
    bucket = "devops-demo-tfstate-bucket-eu-west-3"
    key    = "eks/terraform.tfstate"
    region = "eu-west-3"
  }
}