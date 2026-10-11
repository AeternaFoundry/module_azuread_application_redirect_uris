output "application_redirect_uris_id" {
  description = "Map of id values across all application_redirect_uris, keyed the same as var.application_redirect_uris"
  value       = { for k, v in azuread_application_redirect_uris.application_redirect_uris : k => v.id if v.id != null && length(v.id) > 0 }
}
output "application_redirect_uris_application_id" {
  description = "Map of application_id values across all application_redirect_uris, keyed the same as var.application_redirect_uris"
  value       = { for k, v in azuread_application_redirect_uris.application_redirect_uris : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "application_redirect_uris_redirect_uris" {
  description = "Map of redirect_uris values across all application_redirect_uris, keyed the same as var.application_redirect_uris"
  value       = { for k, v in azuread_application_redirect_uris.application_redirect_uris : k => v.redirect_uris if v.redirect_uris != null && length(v.redirect_uris) > 0 }
}
output "application_redirect_uris_type" {
  description = "Map of type values across all application_redirect_uris, keyed the same as var.application_redirect_uris"
  value       = { for k, v in azuread_application_redirect_uris.application_redirect_uris : k => v.type if v.type != null && length(v.type) > 0 }
}

