resource "aws_lambda_permission" "allow_s3_accesslambda" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda.arn
  principal     = "s3.amazonaws.com"
  source_arn    = data.aws_s3_bucket.my_s3.arn
}

data "aws_s3_bucket" "my_s3" {
  bucket = "terraform-fstatebucket"
}
resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = "terraform-fstatebucket"

  lambda_function {
    lambda_function_arn = aws_lambda_function.lambda.arn

    events = ["s3:ObjectCreated:*"]
  }

  depends_on = [aws_lambda_permission.allow_s3_accesslambda]
}