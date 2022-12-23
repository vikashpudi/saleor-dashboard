resource "azurerm_resource_group" "usha" {
  name     = var.resource_group.name
  location = var.resource_group.location
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.kubernetes_cluster.name
  location            = azurerm_resource_group.usha.location
  resource_group_name = azurerm_resource_group.usha.name
  dns_prefix          = "dns1"

  default_node_pool {
    name       = "pool1"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
  }
  depends_on = [
    azurerm_resource_group.usha
  ]
}
