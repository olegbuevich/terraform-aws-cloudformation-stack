variable "create" {
  description = "Controls if resources should be created"
  type        = bool
  default     = true
}

###

variable "name" {
  description = "Stack name"
  type        = string
}

### template

variable "template_path" {
  description = "Local path of file containing the template body"
  type        = string
  default     = ""
}

variable "template_body" {
  description = "The structure that contains the template body"
  type        = string
  default     = ""
}

variable "template_url" {
  description = "The URL that point to a template that is located in an Amazon S3 bucket"
  type        = string
  default     = null
}

###

variable "capabilities" {
  description = "A list of capabilities"
  type        = list(string)
  default     = []
}

variable "parameters" {
  description = "A map of Parameter structures that specify input parameters for the stack"
  type        = any
  default     = {}
}

variable "tags" {
  description = "Map of resource tags to associate with this stack"
  type        = map(string)
  default     = {}
}

variable "on_failure" {
  description = "Action to be taken if stack creation fails"
  type        = string
  default     = "DELETE"
}

variable "policy_body" {
  description = "Structure containing the stack policy body"
  type        = string
  default     = null
}

variable "policy_url" {
  description = "Location of a file containing the stack policy"
  type        = string
  default     = null
}

variable "iam_role_arn" {
  description = "The ARN of an IAM role that AWS CloudFormation assumes to create the stack"
  type        = string
  default     = null
}
