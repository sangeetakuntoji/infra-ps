resource "azurerm_static_site" "web" {
  name                = "skywavestaticwebapp01"
  resource_group_name = "skywave-prod1"
  location            = "eastus2"
}
