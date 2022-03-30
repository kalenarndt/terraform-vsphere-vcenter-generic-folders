terraform {
  required_version = ">=0.13.1"
  experiments      = [module_variable_optional_attrs]
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = ">=2.1.1"
    }
  }
}