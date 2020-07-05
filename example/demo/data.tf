data "aws_caller_identity" "current" {
}


# data "terraform_remote_state" "vpc" {
#   backend = "s3"
#   config = {
#     region = "ap-northeast-2"
#     bucket = "terraform-11st-demo-state"
#     key    = "vpc-demo.tfstate"
#   }
# }

data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "11st"
    workspaces = {
      name = "terraform-env-demo-vpc"
    }
  }
}