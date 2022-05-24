resource "azurerm_resource_group" "apimrg" {
  name     = "apim-rg"
  location = var.location
}

resource "azurerm_api_management" "apim" {
  name                = "sample-apim"
  location            = azurerm_resource_group.apimrg.location
  resource_group_name = azurerm_resource_group.apimrg.name
  publisher_name      = "My Company"
  publisher_email     = "company@terraform.io"

  sku_name = "Developer_1"
}
