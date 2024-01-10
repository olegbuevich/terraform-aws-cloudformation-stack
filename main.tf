locals {
  create = var.create

  template_is_file = length(var.template_path) > 0
  template_body    = length(var.template_body) > 0 ? var.template_body : (local.template_is_file ? file(var.template_path) : null)
}

resource "aws_cloudformation_stack" "this" {
  count = local.create ? 1 : 0

  name = var.name

  capabilities       = var.capabilities
  disable_rollback   = null
  iam_role_arn       = var.iam_role_arn
  notification_arns  = null
  on_failure         = var.on_failure
  parameters         = var.parameters
  policy_body        = var.policy_body
  policy_url         = var.policy_url
  tags               = var.tags
  template_body      = local.template_body
  template_url       = var.template_url
  timeout_in_minutes = null
}
