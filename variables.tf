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
  # --- Unconfirmed validation candidates, derived from azurerm_ip_group_cidr's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: ip_group_id
  #   source:    [from ipgroups.ValidateIPGroupID] !ok
  # path: ip_group_id
  #   source:    [from ipgroups.ValidateIPGroupID] err != nil
}

