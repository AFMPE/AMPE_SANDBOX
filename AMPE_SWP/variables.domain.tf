#
# Static Web Page Vars
#
variable "SWP-Name" {
  description = "Static Web Page Name"
  type = string
  default = "AMPE-Static-Page"
}

#
# Required DNS variables
#
variable "zone_name" {
  description = "Default Zone Name"
  type = string
  default = "missionpartners.us"
}

variable "cname_record" {
    description = "DNS Record Type"
    type = string
    default = "www"
}

