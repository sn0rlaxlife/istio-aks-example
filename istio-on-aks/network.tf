module "network" {
  source              = "Azure/network/azurerm"
  vnet_name           = azurerm_resource_group.aks.name
  resource_group_name = azurerm_resource_group.aks.name
  address_space       = "10.52.0.0/16"
  subnet_prefixes     = ["10.52.0.0/16"]
  subnet_names        = ["system"]
  depends_on          = [azurerm_resource_group.aks]
  use_for_each        = true
}
