resource "aws_s3_bucket" "projeto_terraform_bucket" {
  bucket = "projeto-terraform2112"

  tags = local.common_tags
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.projeto_terraform_bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}