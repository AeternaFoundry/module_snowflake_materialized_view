output "materialized_views_id" {
  description = "Map of id values across all materialized_views, keyed the same as var.materialized_views except keys with no id are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "materialized_views_comment" {
  description = "Map of comment values across all materialized_views, keyed the same as var.materialized_views except keys with no comment are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "materialized_views_database" {
  description = "Map of database values across all materialized_views, keyed the same as var.materialized_views except keys with no database are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.database if v.database != null && length(v.database) > 0 }
}
output "materialized_views_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all materialized_views, keyed the same as var.materialized_views except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "materialized_views_is_secure" {
  description = "Map of is_secure values across all materialized_views, keyed the same as var.materialized_views except keys with no is_secure are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.is_secure if v.is_secure != null }
}
output "materialized_views_name" {
  description = "Map of name values across all materialized_views, keyed the same as var.materialized_views except keys with no name are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.name if v.name != null && length(v.name) > 0 }
}
output "materialized_views_or_replace" {
  description = "Map of or_replace values across all materialized_views, keyed the same as var.materialized_views except keys with no or_replace are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.or_replace if v.or_replace != null }
}
output "materialized_views_schema" {
  description = "Map of schema values across all materialized_views, keyed the same as var.materialized_views except keys with no schema are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "materialized_views_statement" {
  description = "Map of statement values across all materialized_views, keyed the same as var.materialized_views except keys with no statement are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.statement if v.statement != null && length(v.statement) > 0 }
}
output "materialized_views_tag" {
  description = "Map of tag values across all materialized_views, keyed the same as var.materialized_views except keys with no tag are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "materialized_views_warehouse" {
  description = "Map of warehouse values across all materialized_views, keyed the same as var.materialized_views except keys with no warehouse are omitted"
  value       = { for k, v in snowflake_materialized_view.materialized_views : k => v.warehouse if v.warehouse != null && length(v.warehouse) > 0 }
}

