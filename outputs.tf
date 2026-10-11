output "database_pluggable_databases_lookup_id" {
  description = "Map of id values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_pluggable_databases_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_pluggable_databases_lookup_database_id" {
  description = "Map of database_id values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no database_id are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "database_pluggable_databases_lookup_filter" {
  description = "Map of filter values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_pluggable_databases_lookup_pdb_name" {
  description = "Map of pdb_name values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no pdb_name are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.pdb_name if v.pdb_name != null && length(v.pdb_name) > 0 }
}
output "database_pluggable_databases_lookup_pluggable_databases" {
  description = "Map of pluggable_databases values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no pluggable_databases are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.pluggable_databases if v.pluggable_databases != null && length(v.pluggable_databases) > 0 }
}
output "database_pluggable_databases_lookup_state" {
  description = "Map of state values across all database_pluggable_databases_lookup, keyed the same as var.database_pluggable_databases_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_database_pluggable_databases.database_pluggable_databases_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

