variable "location" {
  default = "canadacentral"
}

variable "resource_group_name" {
  default = "rg-mini-finance"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa_azure.pub"
}