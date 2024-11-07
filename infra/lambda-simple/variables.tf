variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Name of the project."
  type        = string
  default     = "poc"
}

variable "name" {
  description = "Name of the lambda."
  type        = string
  default     = "serverless-test"
}

resource "random_string" "unique_key" {
  length  = 6
  special = false
  lower   = true
  upper   = false
  numeric = false
}