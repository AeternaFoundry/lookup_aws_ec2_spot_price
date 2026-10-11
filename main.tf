data "aws_ec2_spot_price" "ec2_spot_price_lookup" {
  for_each = var.ec2_spot_price_lookup

  availability_zone = each.value.availability_zone
  instance_type     = each.value.instance_type
  region            = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

