# AMPE SANDBOX WORKSPACES

A repository for developing and testing new features and workloads in the AMPE.

## USAGE:

### Updating a workspace
- Clone this repo
- Create a branch dedicated to changes of only one workspace
- Add workspace short-code to the beginning of all commits
- Add workspace short-code to the beginning of each pull-request

### Creating a workspace
- Clone repo
- Create a branch dedicated to the new workspace
- Identify shortcode and tfstate file name
- Update the workspace/shortcode table in this README
- Create the workspace directory
- Update the GitHub secrets to include the tfstate file **Example** secrets.TF_AMPE_KEY -> AMPE.terraform.tfstate
- Update the logic in the 'tfplan' and 'tfapply' files to include the workspace directory and shortcode


## Workspaces and Short-Codes:

| **Workspace**                                     | **Short-Code**                            |
|:------------------------------------------------  | ----------------------------------------: |
| AMPE Static Web Page                              | ASWP                                      |
| Secure Linux JumpBox                              | slj                                       |
