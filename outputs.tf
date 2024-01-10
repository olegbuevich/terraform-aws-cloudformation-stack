output "stack_name" {
  value = try(aws_cloudformation_stack.this.0.name, "")
}
output "stack_id" {
  value = try(aws_cloudformation_stack.this.0.id, "")
}
output "stack_outputs" {
  value = try(aws_cloudformation_stack.this.0.outputs, "")
}
