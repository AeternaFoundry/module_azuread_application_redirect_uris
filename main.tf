resource "azuread_application_redirect_uris" "application_redirect_uris" {
  for_each = var.application_redirect_uris

  application_id = each.value.application_id
  redirect_uris  = each.value.redirect_uris
  type           = each.value.type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

