resource "keycloak_organization_memberships" "organization_memberships" {
  for_each = var.organization_memberships

  members         = each.value.members
  organization_id = each.value.organization_id
  realm_id        = each.value.realm_id
}

