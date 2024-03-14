provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {
    path = "dev/vpc/terraform.tfstate"
  }
}

module "eks" {
  source = "../../../infrastructure-modules/eks"

  eks_name = "demo"
  eks_version = "1.26"
  env = "dev"
  subnet_ids = vpc.output.subnet_ids
  node_groups = {
        general = {
      capacity_type  = "ON_DEMAND"
      instance_types = ["t3a.xlarge"]
      scaling_config = {
        desired_size = 1
        max_size     = 10
        min_size     = 0
      }
    }
  }
}