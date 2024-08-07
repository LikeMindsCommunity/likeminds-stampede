# Use existing virtual network
data "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
}

# Use existing subnet
data "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
}

# Define public IP
resource "azurerm_public_ip" "public_ip" {
  name                = local.es_public_ip_name
  location            = var.resource_location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = local.es_public_ip_allocation
  domain_name_label   = local.es_dns_label
}

# Define network interface
resource "azurerm_network_interface" "nic" {
  name                = local.es_nic_name
  location            = var.resource_location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                          = local.es_nic_config_name
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = local.es_private_ip_allocation
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}

# Define virtual machine
resource "azurerm_linux_virtual_machine" "vm" {
  name                = local.es_instance_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.resource_location
  size                = local.es_instance_size
  admin_username      = var.es_vm_admin_user_name
  admin_password      = var.es_vm_admin_password
  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  custom_data = base64encode(templatefile(local.es_init_script_path, {
    ELASTIC_USERNAME = var.es_vm_admin_user_name
    ELASTIC_PASSWORD = var.es_vm_admin_password
  }))
}

# Output the public IP address
output "public_ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
  description = "The public IP address of the Elasticsearch VM"
}

# Output the DNS label
output "public_ip_dns" {
  value = azurerm_public_ip.public_ip.fqdn
  description = "The DNS label for the public IP address"
}


# Local variables for Elasticsearch VM
locals {
    es_instance_name = "likeminds-load-es"
    es_instance_size = "Standard_B2s"

    es_public_ip_name = "likeminds-load-es-ip"
    es_nic_name = "likeminds-load-es-nic"
    es_nic_config_name = "likeminds-load-es-nic-config"
    es_public_ip_allocation = "Static"
    es_private_ip_allocation = "Dynamic"

    es_dns_label = "elasticsearch-loadtest" # Will resolve to <dns_label>.<region>.cloudapp.azure.com
    
    es_init_script_path = "${path.module}/cloud-init.yaml"
}