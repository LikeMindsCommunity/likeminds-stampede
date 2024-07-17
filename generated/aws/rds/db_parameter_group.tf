resource "aws_db_parameter_group" "tfer--likeminds-staging-rds-parameter-group" {
  description = "likeminds-staging-rds-parameter-group"
  family      = "postgres11"
  name        = "likeminds-staging-rds-parameter-group"
}

resource "aws_db_parameter_group" "tfer--likeminds-staging-rds-parameter-group-12" {
  description = " likeminds-staging-rds-parameter-group-12"
  family      = "postgres12"
  name        = "likeminds-staging-rds-parameter-group-12"
}
