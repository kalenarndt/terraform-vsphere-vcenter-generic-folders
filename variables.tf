## Data Source Variables ##
variable "datacenter" {
  description = "(Required) Datacenter where the Content Library will be created"
  type        = string
}

## Input Variables ##
variable "parent_folder" {
  description = "(Optional) Parent folder that will be created for all sub-folders. Required if var.create_vm_folders is set to true"
  type        = string
  default     = ""
}

variable "sub_folders" {
  description = "(Optional) List of folders to be created below the parent folder. Required if var.create_vm_folders is set to true"
  type        = list(string)
  default     = [""]
}

variable "network_folders" {
  description = "(Optional) List of folders to be created for the networking constructs. Required if var.create_network_folders is set to true"
  type        = list(string)
  default     = [""]
}

variable "host_folders" {
  description = "(Optional) List of folders to be created for the ESXi hosts"
  type        = list(string)
  default     = [""]
}

## Conditionals ##
variable "create_host_folders" {
  description = "(Optional) Conditional that allows for the creation of ESXi host folders"
  type        = bool
  default     = false
}

variable "create_network_folders" {
  description = "(Optional) Conditional that allows for the creation of network folders"
  type        = bool
  default     = false
}

variable "create_vm_folders" {
  description = "(Optional) Conditional that allows for the creation of vm folders"
  type        = bool
  default     = true
}


