# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###########################
# Global Configuration   ##
###########################

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  type        = string
  default = "eastus"
}

variable "org_name" {
  description = "A name for the organization. It defaults to anoa."
  type        = string
  default     = "AMPE"
}

variable "workload_name" {
  description = "A name for the workload."
  type        = string
  default = "linux-vm"
}

variable "environment" {
  description = "A name for the environment. It defaults to dev"
  type        = string
  default = "dev"
}

variable "add_tags" {
  description = "Map of custom tags."
  type        = map(string)
  default     = {}
}