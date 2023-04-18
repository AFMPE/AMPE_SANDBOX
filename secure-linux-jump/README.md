# Secure Linux VM Jumpbox

This workspace is dedicated to meeting security requirements for a linux vm that will act as a jumpbox into other resources within a virtual network.

## Security Requirements:

* Certificate Based SSH-Connection
* Bastion Service Connection Brokerage
* Secure Image Baseline
* No hard-coded credentials

## Testing Use Case
 
| **UseCase*                                     | **Desired State**                            |
|:------------------------------------------------  | ----------------------------------------: |
| VM in Hub to Linux JumpBox in Spoke               | Cert-based SSH, KeyVault maintaining private key      |


## Questions

* What's the RBAC & ABAC model authentication between workloads and/or Hub & Spoke?
* How can certifiacate generation be automated without exposing secrets or sensitive values in code?