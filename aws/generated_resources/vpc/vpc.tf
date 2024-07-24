resource "aws_vpc" "tfer--vpc-0e64b2f10870667a7" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.51.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-vpc"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-vpc"
  }
}
