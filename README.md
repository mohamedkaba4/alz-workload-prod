# Mavencrest Production Workload Landing Zone

Terraform for the production workload landing zone.

## Scope

- Production workload resource group
- Spoke VNet
- Application subnet
- Hub-to-spoke and spoke-to-hub VNet peering

The workload is deployed into `sub-mavencrest-prod` and connected to the shared hub in the Connectivity subscription.
