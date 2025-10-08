output "lambda_function_name" {
  description = "Name of the deployed Lambda function"
  value       = module.lambda_api.function_name
}

output "api_gateway_url" {
  description = "URL of the API Gateway endpoint"
  value       = module.api_gateway.api_url
}