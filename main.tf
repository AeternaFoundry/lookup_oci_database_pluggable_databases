data "oci_database_pluggable_databases" "database_pluggable_databases_lookup" {
  for_each = var.database_pluggable_databases_lookup

  compartment_id = each.value.compartment_id
  database_id    = each.value.database_id
  pdb_name       = each.value.pdb_name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

