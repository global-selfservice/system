provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "global-self-service-dev-terraform-state"
    key            = "system.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}
