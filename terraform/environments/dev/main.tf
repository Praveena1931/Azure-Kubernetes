provider "azurerm" {
  features {}
}

module "Kubernetes" {
  source                  = "../../modules/k8s"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location 
  aks_cluster_name        = var.aks_cluster_name
  dns_prefix              = var.dns_prefix 
  node_pool_name          = var.node_pool_name
  node_count              = var.node_count
  vm_size                 = var.vm_size  
}