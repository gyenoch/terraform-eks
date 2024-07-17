terraform {
  backend "s3" {
    bucket = "gyenoch77-terraform-remote-state"
    key    = "devops/eks/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
  }
}