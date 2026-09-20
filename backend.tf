terraform {
  backend "azurerm" {
    resource_group_name  = "rg-alz-mgmt-state-eastus-001"
    storage_account_name = "stoalzmgmeas001xpqp"
    container_name       = "mgmt-tfstate"
    key                  = "workloads/prod.tfstate"
    subscription_id      = "59b3a0c1-d71e-452f-9950-e28743627a30"
    use_azuread_auth     = true
  }
}
