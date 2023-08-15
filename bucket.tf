resource "aws_s3_bucket" "projeto_terraform_bucket" {
  bucket = "projeto-terraform2112"
  versioning {
    enabled = false
  }

  tags = local.common_tags
}