variable "region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "eu-central-1"
}

variable "lambda_function_name" {
  description = "Name der Lambda-Funktion"
  type        = string
  default     = "aws-cockpit-api"
}