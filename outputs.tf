output "organization_memberships_id" {
  description = "Map of id values across all organization_memberships, keyed the same as var.organization_memberships except keys with no id are omitted"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_memberships_members" {
  description = "Map of members values across all organization_memberships, keyed the same as var.organization_memberships except keys with no members are omitted"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.members if v.members != null && length(v.members) > 0 }
}
output "organization_memberships_organization_id" {
  description = "Map of organization_id values across all organization_memberships, keyed the same as var.organization_memberships except keys with no organization_id are omitted"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}
output "organization_memberships_realm_id" {
  description = "Map of realm_id values across all organization_memberships, keyed the same as var.organization_memberships except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_organization_memberships.organization_memberships : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

