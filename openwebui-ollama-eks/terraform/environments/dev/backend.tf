terraform {
  backend "s3" {
    bucket         = "openwebui-terraform-state1210"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    use_lockfile = true
    encrypt        = true
  }
}
