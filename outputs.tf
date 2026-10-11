output "metastore_assignments_id" {
  description = "Map of id values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no id are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metastore_assignments_api" {
  description = "Map of api values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no api are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => v.api if v.api != null && length(v.api) > 0 }
}
output "metastore_assignments_default_catalog_name" {
  description = "Map of default_catalog_name values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no default_catalog_name are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => v.default_catalog_name if v.default_catalog_name != null && length(v.default_catalog_name) > 0 }
}
output "metastore_assignments_metastore_id" {
  description = "Map of metastore_id values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "metastore_assignments_provider_config" {
  description = "Map of provider_config values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no provider_config are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "metastore_assignments_workspace_id" {
  description = "Map of workspace_id values across all metastore_assignments, keyed the same as var.metastore_assignments except keys with no workspace_id are omitted"
  value       = { for k, v in databricks_metastore_assignment.metastore_assignments : k => v.workspace_id if v.workspace_id != null }
}

