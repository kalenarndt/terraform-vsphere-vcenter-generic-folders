data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}

resource "vsphere_folder" "vm_root" {
  count         = var.create_vm_folders ? 1 : 0
  path          = var.parent_folder
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "vm_sub" {
  for_each      = var.create_vm_folders ? toset(var.sub_folders) : []
  path          = "${vsphere_folder.vm_root[0].path}/${each.value}"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "host" {
  for_each      = var.create_host_folders ? toset(var.host_folders) : []
  path          = each.value
  type          = "host"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "network" {
  for_each      = var.create_network_folders ? toset(var.network_folders) : []
  path          = each.value
  type          = "network"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}