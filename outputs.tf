output "ip_group_cidrs" {
  description = "All ip_group_cidr resources"
  value       = azurerm_ip_group_cidr.ip_group_cidrs
}
output "ip_group_cidrs_cidr" {
  description = "List of cidr values across all ip_group_cidrs"
  value       = [for k, v in azurerm_ip_group_cidr.ip_group_cidrs : v.cidr]
}
output "ip_group_cidrs_ip_group_id" {
  description = "List of ip_group_id values across all ip_group_cidrs"
  value       = [for k, v in azurerm_ip_group_cidr.ip_group_cidrs : v.ip_group_id]
}

