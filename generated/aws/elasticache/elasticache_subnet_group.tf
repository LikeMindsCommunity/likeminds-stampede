resource "aws_elasticache_subnet_group" "tfer--likeminds-staging-redis-subnet-group" {
  description = "likeminds-staging-redis-subnet-group"
  name        = "likeminds-staging-redis-subnet-group"
  subnet_ids  = ["subnet-0446c1b26325eba62", "subnet-048ec02800b9dc5fd"]

  tags = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-redis-subnet-group"
  }

  tags_all = {
    CreatedBy = "Rapyder"
    Env       = "staging"
    Name      = "likeminds-staging-redis-subnet-group"
  }
}
