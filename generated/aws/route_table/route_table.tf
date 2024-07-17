resource "aws_route_table" "tfer--rtb-018a188a0766a42b3" {
  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
  }

  vpc_id = "vpc-0e64b2f10870667a7"
}

resource "aws_route_table" "tfer--rtb-0a0616ad99dc57232" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-04dd596dfc037ff47"
  }

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-rtb-public"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-rtb-public"
  }

  vpc_id = "vpc-0e64b2f10870667a7"
}

resource "aws_route_table" "tfer--rtb-0e6622990b798e132" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0d62725286df920f7"
  }

  route {
    cidr_block                = "192.168.248.0/21"
    vpc_peering_connection_id = "pcx-081198c421a7d513b"
  }

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-rtb-private"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-rtb-private"
  }

  vpc_id = "vpc-0e64b2f10870667a7"
}
