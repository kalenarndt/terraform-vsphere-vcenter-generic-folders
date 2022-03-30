output "vm_folders" {
  value       = vsphere_folder.vm_sub
  description = "Output of the created VM sub folders"
}

output "network_folders" {
  value       = vsphere_folder.network
  description = "Output of the created Network folders"
}

output "host_folders" {
  value       = vsphere_folder.host
  description = "Output of the created ESXi host folders"
}