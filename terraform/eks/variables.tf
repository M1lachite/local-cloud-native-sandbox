variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "floci-eks-cluster"
}


variable "destination" {
  description = "Destination for commands"
  type        = string
  default     = "http://localhost:4566"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}
