variable "generative_ai_hosted_deployments_lookup" {
  description = <<EOT
Map of generative_ai_hosted_deployments_lookup, attributes below
Required:
    - compartment_id
Optional:
    - application_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    application_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

