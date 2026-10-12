variable "materialized_views" {
  description = <<EOT
Map of materialized_views, attributes below
Required:
    - database
    - name
    - schema
    - statement
    - warehouse
Optional:
    - comment
    - is_secure
    - or_replace
    - tag (block):
        - database (optional)
        - name (required)
        - schema (optional)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database   = string
    name       = string
    schema     = string
    statement  = string
    warehouse  = string
    comment    = optional(string)
    is_secure  = optional(bool)
    or_replace = optional(bool)
    tag = optional(list(object({
      database = optional(string)
      name     = string
      schema   = optional(string)
      value    = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

