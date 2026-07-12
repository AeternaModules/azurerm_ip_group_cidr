output "ip_group_cidrs_cidr" {
  description = "Map of cidr values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = { for k, v in azurerm_ip_group_cidr.ip_group_cidrs : k => v.cidr }
}
output "ip_group_cidrs_ip_group_id" {
  description = "Map of ip_group_id values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = { for k, v in azurerm_ip_group_cidr.ip_group_cidrs : k => v.ip_group_id }
}

