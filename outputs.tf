output "ec2_spot_price_lookup_id" {
  description = "Map of id values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_spot_price_lookup_availability_zone" {
  description = "Map of availability_zone values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "ec2_spot_price_lookup_filter" {
  description = "Map of filter values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_spot_price_lookup_instance_type" {
  description = "Map of instance_type values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "ec2_spot_price_lookup_region" {
  description = "Map of region values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_spot_price_lookup_spot_price" {
  description = "Map of spot_price values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.spot_price if v.spot_price != null && length(v.spot_price) > 0 }
}
output "ec2_spot_price_lookup_spot_price_timestamp" {
  description = "Map of spot_price_timestamp values across all ec2_spot_price_lookup, keyed the same as var.ec2_spot_price_lookup"
  value       = { for k, v in data.aws_ec2_spot_price.ec2_spot_price_lookup : k => v.spot_price_timestamp if v.spot_price_timestamp != null && length(v.spot_price_timestamp) > 0 }
}

