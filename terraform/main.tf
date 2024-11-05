provider "aws" {
  region = "us-west-2"
}

resource "aws_lambda_function" "example" {
  function_name = "example_lambda"
  runtime       = "python3.8"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda_function.lambda_handler"
  filename      = "lambda_function.zip"
}

