env                   = "dev"
aws-region            = "eu-west-1"
cidr-block            = "10.16.0.0/16"
vpc-name              = "vpc"
igw-name              = "igw"
public_subnet_count   = 2
private_subnet_count  = 2
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20"]
pub-availability-zone = ["eu-west-1a", "eu-west-1b"]
pub-sub-name          = "subnet-public"
pri-availability-zone = ["eu-west-1a", "eu-west-1b"]
pri-sub-name          = "subnet-private"
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20"]
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
eip-name              = "elasticip-ngw"
ngw-name              = "ngw"
eks-sg                = "eks"

# EKS
is-eks-cluster-enabled     = true
cluster-name               = "eks-cluster"
cluster-version            = "1.29"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = ["c5a.large", "c5a.xlarge", "m5a.large", "m5a.xlarge", "cs.large", "m5.large", "t3a.large", "t3a.xlarge", "t3a.medium"]
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "3"
desired_capacity_spot      = "1"
min_capacity_spot          = "1"
max_capacity_spot          = "6"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.18.1-eksbuild.1"
  },
  { name    = "coredns",
    version = "v1.11.1-eksbuild.9"
  },
  { name    = "kube-proxy",
    version = "v1.29.3-eksbuild.2"
  },
  { name    = "aws-ebs-csi-driver",
    version = "v1.30.0-eksbuild.1"
  }
]