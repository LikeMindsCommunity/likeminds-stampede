resource "aws_route53_zone" "tfer--Z04475913NAEMJ511PTHA_staging-002E-likeminds" {
  force_destroy = "false"
  name          = "staging.likeminds"

  vpc {
    vpc_id     = "vpc-0e64b2f10870667a7"
    vpc_region = "ap-south-1"
  }
}
