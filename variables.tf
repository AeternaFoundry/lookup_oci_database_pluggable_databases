variable "database_pluggable_databases_lookup" {
  description = <<EOT
Map of database_pluggable_databases_lookup, attributes below
Optional:
    - compartment_id
    - database_id
    - pdb_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    database_id    = optional(string)
    pdb_name       = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

