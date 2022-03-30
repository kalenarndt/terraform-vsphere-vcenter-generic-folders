# terraform-vsphere-vcenter-generic-folders

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13.1 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | >=2.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_folder.host](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/folder) | resource |
| [vsphere_folder.network](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/folder) | resource |
| [vsphere_folder.vm_root](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/folder) | resource |
| [vsphere_folder.vm_sub](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/folder) | resource |
| [vsphere_datacenter.datacenter](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datacenter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_host_folders"></a> [create\_host\_folders](#input\_create\_host\_folders) | (Optional) Conditional that allows for the creation of ESXi host folders | `bool` | `false` | no |
| <a name="input_create_network_folders"></a> [create\_network\_folders](#input\_create\_network\_folders) | (Optional) Conditional that allows for the creation of network folders | `bool` | `false` | no |
| <a name="input_create_vm_folders"></a> [create\_vm\_folders](#input\_create\_vm\_folders) | (Optional) Conditional that allows for the creation of vm folders | `bool` | `true` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | (Required) Datacenter where the Content Library will be created | `string` | n/a | yes |
| <a name="input_host_folders"></a> [host\_folders](#input\_host\_folders) | (Optional) List of folders to be created for the ESXi hosts | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_network_folders"></a> [network\_folders](#input\_network\_folders) | (Optional) List of folders to be created for the networking constructs. Required if var.create\_network\_folders is set to true | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_parent_folder"></a> [parent\_folder](#input\_parent\_folder) | (Optional) Parent folder that will be created for all sub-folders. Required if var.create\_vm\_folders is set to true | `string` | `""` | no |
| <a name="input_sub_folders"></a> [sub\_folders](#input\_sub\_folders) | (Optional) List of folders to be created below the parent folder. Required if var.create\_vm\_folders is set to true | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host_folders"></a> [host\_folders](#output\_host\_folders) | Output of the created ESXi host folders |
| <a name="output_network_folders"></a> [network\_folders](#output\_network\_folders) | Output of the created Network folders |
| <a name="output_vm_folders"></a> [vm\_folders](#output\_vm\_folders) | Output of the created VM sub folders |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
