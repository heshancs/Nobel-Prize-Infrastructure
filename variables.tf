variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "dockerhub_username" {
  description = "Docker Hub username"
  type        = string
}
