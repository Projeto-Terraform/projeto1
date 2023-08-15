output "storage_account_id" {
  value = azurerm_storage_account.projeto-terraform-storage.id
}

output "bucket_name_output" {
  description = "Nome do bucket criado no Amazon S3"
  value       = aws_s3_bucket.projeto_terraform_bucket.id
}
