output "organization_memberships_id" {
  description = "Map of id values across all organization_memberships, keyed the same as var.organization_memberships"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.id }
}
output "organization_memberships_members" {
  description = "Map of members values across all organization_memberships, keyed the same as var.organization_memberships"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.members }
}
output "organization_memberships_organization_id" {
  description = "Map of organization_id values across all organization_memberships, keyed the same as var.organization_memberships"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.organization_id }
}
output "organization_memberships_realm_id" {
  description = "Map of realm_id values across all organization_memberships, keyed the same as var.organization_memberships"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.realm_id }
}

