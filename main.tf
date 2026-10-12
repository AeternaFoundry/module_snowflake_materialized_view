resource "snowflake_materialized_view" "materialized_views" {
  for_each = var.materialized_views

  database   = each.value.database
  name       = each.value.name
  schema     = each.value.schema
  statement  = each.value.statement
  warehouse  = each.value.warehouse
  comment    = each.value.comment
  is_secure  = each.value.is_secure
  or_replace = each.value.or_replace

  dynamic "tag" {
    for_each = each.value.tag != null ? each.value.tag : []
    content {
      database = tag.value.database
      name     = tag.value.name
      schema   = tag.value.schema
      value    = tag.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

