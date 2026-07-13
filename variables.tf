variable "ip_group_cidrs" {
  description = <<EOT
Map of ip_group_cidrs, attributes below
Required:
    - cidr
    - ip_group_id
EOT

  type = map(object({
    cidr        = string
    ip_group_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.ip_group_cidrs : (
        length(v.cidr) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

