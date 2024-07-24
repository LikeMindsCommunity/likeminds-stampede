resource "aws_elasticache_parameter_group" "tfer--likeminds-staging-redis-parameter-group" {
  description = "likeminds-staging-redis-parameter-group"
  family      = "redis6.x"
  name        = "likeminds-staging-redis-parameter-group"

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-redis-parameter-group"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-redis-parameter-group"
  }
}
