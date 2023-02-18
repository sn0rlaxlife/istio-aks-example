resource "azurerm_resource_group" "aks" {
  name     = "istio-aks"
  location = var.region
}
