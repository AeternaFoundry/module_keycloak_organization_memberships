variable "organization_memberships" {
  description = <<EOT
Map of organization_memberships, attributes below
Required:
    - members
    - organization_id
    - realm_id
EOT

  type = map(object({
    members         = set(string)
    organization_id = string
    realm_id        = string
  }))
}

