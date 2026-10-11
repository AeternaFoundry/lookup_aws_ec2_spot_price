variable "ec2_spot_price_lookup" {
  description = <<EOT
Map of ec2_spot_price_lookup, attributes below
Optional:
    - availability_zone
    - instance_type
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    availability_zone = optional(string)
    instance_type     = optional(string)
    region            = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

