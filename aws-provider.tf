provider "aws" {
  access_key = "<ACCESS_KEY>"
  secret_key = "<SECRET_KEY>"
  region     = "ap-northeast-2"
}

module "aws-network-configs" {
  source = "./network-configs"
}
