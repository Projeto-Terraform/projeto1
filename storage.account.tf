resource "azurerm_resource_group" "projeto-terraform-group" {
    name     = "projeto_terraform_resource_group"
    location = var.location
    
    tags = local.common_tags

}


resource "azurerm_storage_account" "projeto-terraform-storage" {
  name                     = "projeto_terraform_storage_account"
  resource_group_name      = azurerm_resource_group.projeto-terraform-group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "projeto-terraform-container" {
  name                  = "projeto_terraform_container"
  storage_account_name  = azurerm_storage_account.projeto-terraform-storage.name
}