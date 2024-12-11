variable "project" {
  type        = string
  description = "ID Google project"
  default     = "default"
}

variable "region" {
  type        = string
  description = "Region Google project"
  default     = "us-west1"
}

variable "data-project" {
  type        = string
  description = "Name of data pipeline project to use as resource prefix"
  default     = "project-prefix"
}

variable "domain" {
  type        = string
  description = "The domain used for DNS zones"
  default     = "example.com"
}
