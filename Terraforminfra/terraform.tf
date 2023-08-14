resource "azurerm_static_site" "web" {
  name                = "skywavestaticwebapp"
  resource_group_name = "skywave-rg"
  location            = "south india"
}
