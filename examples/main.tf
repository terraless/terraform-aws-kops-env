provider "aws" {
  version = "~>2.4.0"
  region  = "us-east-1"
}

module "kops_env" {
  source       = ".."
  state_bucket = "kops-state"
}
