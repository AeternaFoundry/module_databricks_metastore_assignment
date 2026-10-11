variable "metastore_assignments" {
  description = <<EOT
Map of metastore_assignments, attributes below
Required:
    - metastore_id
    - workspace_id
Optional:
    - api
    - default_catalog_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    metastore_id         = string
    workspace_id         = number
    api                  = optional(string)
    default_catalog_name = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

