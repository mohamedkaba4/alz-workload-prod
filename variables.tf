variable "prod_subscription_id" {
  type = string
}

variable "connectivity_subscription_id" {
  type = string
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "hub_vnet_name" {
  type = string
}

variable "hub_resource_group_name" {
  type = string
}
