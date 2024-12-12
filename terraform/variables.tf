variable "project" {
  type        = string
  description = "Google project ID"
  default     = "default"
}

variable "region" {
  type        = string
  description = "Region"
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
