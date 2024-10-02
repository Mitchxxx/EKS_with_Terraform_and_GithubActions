# VPC
variable "aws-region" {}
variable "cluster-name" {}
variable "cidr-block" {}
variable "vpc-name" {}
variable "env" {}
variable "pri-sub-name" {}
variable "pub-sub-name" {}
variable "pub-cidr-block" {
  type = list(string)
}
variable "pri-cidr-block" {
  type = list(string)
}
variable "pub-availability-zone" {
  type = list(string)
}
variable "igw-name" {}
variable "public_subnet_count" {}
variable "private_subnet_count" {}
variable "pri-availability-zone" {
  type = list(string)
}

variable "public-rt-name" {}
variable "private-rt-name" {}
variable "eip-name" {}
variable "ngw-name" {}
variable "eks-sg" {}

# IAM

variable "is_eks_role_enabled" {
  type = bool
}

variable "is_eks_nodegroup_role_enabled" {
  type = bool
}

# EKS

variable "is-eks-cluster-enabled" {
  type = bool
}

variable "cluster-version" {}
variable "endpoint-private-access" {}
variable "endpoint-public-access" {}
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
variable "ondemand_instance_types" {}
variable "spot_instance_types" {}
variable "desired_capacity_on_demand" {}
variable "max_capacity_on_demand" {}
variable "min_capacity_on_demand" {}
variable "desired_capacity_spot" {}
variable "max_capacity_spot" {}
variable "min_capacity_spot" {}