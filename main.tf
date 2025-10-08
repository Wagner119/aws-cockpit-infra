terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "aws-cockpit-terraform-state"
    key    = "infra/global.tfstate"
    region = "eu-central-1"
  }
}

module "lambda_api" {
  source         = "./modules/lambda"
  lambda_zip     = "../backend/dist/aws-cockpit-api.zip"
  function_name  = "aws-cockpit-api"
}

module "api_gateway" {
  source            = "./modules/api_gateway"
  lambda_invoke_arn = module.lambda_api.invoke_arn
  lambda_name       = module.lambda_api.function_name
}
