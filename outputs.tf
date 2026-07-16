output "ip_group_cidrs_id" {
  description = "Map of id values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = { for k, v in azurerm_ip_group_cidr.ip_group_cidrs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_group_cidrs_cidr" {
  description = "Map of cidr values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = { for k, v in azurerm_ip_group_cidr.ip_group_cidrs : k => v.cidr if v.cidr != null && length(v.cidr) > 0 }
}
output "ip_group_cidrs_ip_group_id" {
  description = "Map of ip_group_id values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = { for k, v in azurerm_ip_group_cidr.ip_group_cidrs : k => v.ip_group_id if v.ip_group_id != null && length(v.ip_group_id) > 0 }
}

