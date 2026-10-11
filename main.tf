resource "databricks_metastore_assignment" "metastore_assignments" {
  for_each = var.metastore_assignments

  metastore_id         = each.value.metastore_id
  workspace_id         = each.value.workspace_id
  api                  = each.value.api
  default_catalog_name = each.value.default_catalog_name

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

