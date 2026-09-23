# Mavencrest Production Workload Landing Zone

Terraform for the production workload landing zone.

## Scope

- Production workload resource group
- Spoke VNet
- Application subnet
- Hub-to-spoke and spoke-to-hub VNet peering

The workload is deployed into `sub-mavencrest-prod` and connected to the shared hub in the Connectivity subscription.



Done so far 
Platform Landing Zone deployed with Microsoft ALZ Accelerator
Management group hierarchy and subscription placement
Management, Connectivity, Security, and Prod subscriptions
Hub-and-spoke networking
Prod spoke VNet, subnet, NSG, and bidirectional peering
Azure Policy enforcement verified in practice
Remote Terraform state in Azure Storage
Separate platform and workload state
Separate alz-mgmt and alz-workload-prod repos
Separate plan/apply service connections
Workload identity federation
Least-privilege RBAC split
Azure DevOps plan and apply pipelines
Successful pipeline Terraform apply with zero drift