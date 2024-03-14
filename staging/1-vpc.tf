resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  enable_dns_support = "true"
  //enable_classic_link         = "false"
  //assign_generated_cidr_block = "false"

  tags = {
    Name = "stage-main"
  }
}