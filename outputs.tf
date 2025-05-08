# Mostra gli indirizzi IP pubblici delle due VM
output "public_ips" {
  description = "Indirizzi IP pubblici delle VM (master e worker)"
  value       = azurerm_public_ip.public_ip[*].ip_address
}

# Mostra la chiave privata generata da Terraform per accedere via SSH
output "ssh_private_key" {
  description = "Chiave privata SSH da usare per accedere alle VM"
  value       = tls_private_key.ssh.private_key_pem
  sensitive   = true
}
