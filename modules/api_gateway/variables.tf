variable "lambda_invoke_arn" {
  description = "The ARN used by API Gateway to invoke the Lambda"
  type        = string
}

variable "lambda_name" {
  description = "The name of the Lambda function to allow invocation"
  type        = string
}