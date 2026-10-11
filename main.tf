data "oci_generative_ai_hosted_deployments" "generative_ai_hosted_deployments_lookup" {
  for_each = var.generative_ai_hosted_deployments_lookup

  compartment_id = each.value.compartment_id
  application_id = each.value.application_id
  display_name   = each.value.display_name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

