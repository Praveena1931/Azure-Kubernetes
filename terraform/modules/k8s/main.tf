resource "azurerm_resource_group" "k8sresource" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "AKS" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.k8sresource.location
  resource_group_name = azurerm_resource_group.k8sresource.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}
