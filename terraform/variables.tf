variable "app_name" {
  type    = string
  default = "newworld"
}

variable "image_name" {
  type    = string
  default = "newworld"
}

variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-northeast-1"
}

