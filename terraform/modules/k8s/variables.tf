variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  }

variable "resource_group_location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "Name of the default node pool"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
}

variable "vm_size" {
  description = "Size of the virtual machines in the node pool"
  type        = string
}
