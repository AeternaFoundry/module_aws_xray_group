output "xray_groups_id" {
  description = "Map of id values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "xray_groups_arn" {
  description = "Map of arn values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "xray_groups_filter_expression" {
  description = "Map of filter_expression values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.filter_expression if v.filter_expression != null && length(v.filter_expression) > 0 }
}
output "xray_groups_group_name" {
  description = "Map of group_name values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "xray_groups_insights_configuration" {
  description = "Map of insights_configuration values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => one(v.insights_configuration) if v.insights_configuration != null && length(v.insights_configuration) > 0 }
}
output "xray_groups_region" {
  description = "Map of region values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "xray_groups_tags" {
  description = "Map of tags values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "xray_groups_tags_all" {
  description = "Map of tags_all values across all xray_groups, keyed the same as var.xray_groups"
  value       = { for k, v in aws_xray_group.xray_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

