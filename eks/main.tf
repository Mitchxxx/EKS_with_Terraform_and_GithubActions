locals {
  org = "medium"
  env = var.env
}

module "eks" {
  source = "../module"

  env = var.env
  ########## VPC ###############
  cluster-name          = "${local.env}-${local.org}-${var.cluster-name}"
  cidr-block            = var.cidr-block
  vpc-name              = "${local.env}-${local.org}-${var.vpc-name}"
  public_subnet_count   = var.public_subnet_count
  pub-availability-zone = var.pub-availability-zone
  pub-cidr-block        = var.pub-cidr-block
  pub-sub-name          = "${local.env}-${local.org}-${var.pub-sub-name}"
  private_subnet_count  = var.private_subnet_count
  pri-cidr-block        = var.pri-cidr-block
  pri-availability-zone = var.pri-availability-zone
  pri-sub-name          = "${local.env}-${local.org}-${var.pri-sub-name}"
  public-rt-name        = "${local.env}-${local.org}-${var.public-rt-name}"
  private-rt-name       = "${local.env}-${local.org}-${var.private-rt-name}"
  eip-name              = "${local.env}-${local.org}-${var.eip-name}"
  igw-name              = "${local.env}-${local.org}-${var.igw-name}"
  ngw-name              = "${local.env}-${local.org}-${var.ngw-name}"
  eks-sg                = "${local.env}-${local.org}-${var.eks-sg}"

  ################ IAM #################

  is_eks_role_enabled           = true
  is_eks_nodegroup_role_enabled = true

  ############### EKS ################
  ondemand_instance_types    = var.ondemand_instance_types
  spot_instance_types        = var.spot_instance_types
  desired_capacity_on_demand = var.desired_capacity_on_demand
  min_capacity_on_demand     = var.min_capacity_on_demand
  max_capacity_on_demand     = var.max_capacity_on_demand
  desired_capacity_spot      = var.desired_capacity_spot
  min_capacity_spot          = var.min_capacity_spot
  max_capacity_spot          = var.max_capacity_spot
  is-eks-cluster-enabled     = var.is-eks-cluster-enabled
  cluster-version            = var.cluster-version
  endpoint-private-access    = var.endpoint-private-access
  endpoint-public-access     = var.endpoint-public-access
  addons                     = var.addons
}