variable "tags" {
  type        = map(string)
  description = "Tags to be added to aws resources"
}

variable "oidc" {
  type = string
}

variable "cluster_name" {
  type = string
}
variable "vpc_id" {
  type = string
}

