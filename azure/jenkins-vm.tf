# Define public IP
resource "azurerm_public_ip" "jenkins_public_ip" {
  name                = local.jenkins_public_ip_name
  location            = var.resource_location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = local.jenkins_public_ip_allocation
  domain_name_label   = local.jenkins_dns_label
}

# Define network interface
resource "azurerm_network_interface" "jenkins_nic" {
  name                = local.jenkins_nic_name
  location            = var.resource_location
  resource_group_name = data.azurerm_resource_group.rg.name

  ip_configuration {
    name                          = local.jenkins_nic_config_name
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = local.jenkins_private_ip_allocation
    public_ip_address_id          = azurerm_public_ip.jenkins_public_ip.id
  }
}

# Define virtual machine
resource "azurerm_linux_virtual_machine" "jenkins_vm" {
  name                = local.jenkins_instance_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.resource_location
  size                = local.jenkins_instance_size
  admin_username      = var.jenkins_vm_admin_user_name
  admin_password      = var.jenkins_vm_admin_password

  disable_password_authentication = false

  network_interface_ids = [
    azurerm_network_interface.jenkins_nic.id,
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

  custom_data = base64encode(file(local.jenkins_init_script_path))
}

# Output the public IP address
output "jenkins_public_ip_address" {
  value = azurerm_public_ip.jenkins_public_ip.ip_address
  description = "The public IP address of the Jenkins VM"
}

# Output the DNS label
output "jenkins_public_ip_dns" {
  value = azurerm_public_ip.jenkins_public_ip.fqdn
  description = "The DNS label for the Jenkins public IP address"
}


# Local variables for Jenkins VM
locals {
    jenkins_instance_name = "likeminds-load-jenkins"
    jenkins_instance_size = "Standard_B2s"

    jenkins_public_ip_name = "likeminds-load-jenkins-ip"
    jenkins_nic_name = "likeminds-load-jenkins-nic"
    jenkins_nic_config_name = "likeminds-load-jenkins-nic-config"
    jenkins_public_ip_allocation = "Static"
    jenkins_private_ip_allocation = "Dynamic"

    jenkins_dns_label = "jenkins-loadtest" # Will resolve to <dns_label>.<region>.cloudapp.azure.com
    
    jenkins_init_script_path = "${path.module}/jenkins-init.yaml"
}
