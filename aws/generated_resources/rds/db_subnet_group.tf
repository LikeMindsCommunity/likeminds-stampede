resource "aws_db_subnet_group" "tfer--likeminds-staging-rds-subnet-group" {
  description = "likeminds-staging-rds-subnet-group"
  name        = "likeminds-staging-rds-subnet-group"
  subnet_ids  = ["subnet-0446c1b26325eba62", "subnet-048ec02800b9dc5fd"]

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
  }
}
