resource "aws_elasticache_replication_group" "tfer--likeminds-staging-caravan-redis" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "false"
  data_tiering_enabled       = "false"
  description                = "likeminds-staging-caravan-redis"
  engine                     = "redis"
  engine_version             = "6.2"
  ip_discovery               = "ipv4"
  kms_key_id                 = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "slow-log"
  }

  log_delivery_configuration {
    destination      = "likeminds-staging-vpc-flowlog"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "engine-log"
  }

  maintenance_window         = "sat:20:30-sat:21:30"
  multi_az_enabled           = "false"
  network_type               = "ipv4"
  node_type                  = "cache.t3.micro"
  num_cache_clusters         = "1"
  num_node_groups            = "1"
  parameter_group_name       = "likeminds-staging-redis-parameter-group"
  port                       = "6379"
  replicas_per_node_group    = "0"
  replication_group_id       = "likeminds-staging-caravan-redis"
  security_group_ids         = ["sg-085e420d3ee1b05d8"]
  snapshot_retention_limit   = "1"
  snapshot_window            = "04:00-05:00"
  subnet_group_name          = "${aws_elasticache_subnet_group.tfer--likeminds-staging-redis-subnet-group.name}"
  transit_encryption_enabled = "false"
}

resource "aws_elasticache_replication_group" "tfer--likeminds-staging-kettle-redis" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "false"
  data_tiering_enabled       = "false"
  description                = "likeminds-staging-kettle-redis"
  engine                     = "redis"
  engine_version             = "6.2"
  ip_discovery               = "ipv4"
  kms_key_id                 = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "engine-log"
  }

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "slow-log"
  }

  maintenance_window       = "thu:20:30-thu:21:30"
  multi_az_enabled         = "false"
  network_type             = "ipv4"
  node_type                = "cache.t3.micro"
  num_cache_clusters       = "1"
  num_node_groups          = "1"
  parameter_group_name     = "likeminds-staging-redis-parameter-group"
  port                     = "6379"
  replicas_per_node_group  = "0"
  replication_group_id     = "likeminds-staging-kettle-redis"
  security_group_ids       = ["sg-0238d03ee94ec9d74"]
  snapshot_retention_limit = "1"
  snapshot_window          = "00:30-01:30"
  subnet_group_name        = "${aws_elasticache_subnet_group.tfer--likeminds-staging-redis-subnet-group.name}"

  tags = {
    Name = "likeminds-staging-kettle-redis"
  }

  tags_all = {
    Name = "likeminds-staging-kettle-redis"
  }

  transit_encryption_enabled = "false"
}

resource "aws_elasticache_replication_group" "tfer--likeminds-staging-swarm-redis" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "false"
  data_tiering_enabled       = "false"
  description                = "likeminds-staging-swarm-redis"
  engine                     = "redis"
  engine_version             = "6.2"
  ip_discovery               = "ipv4"
  kms_key_id                 = "arn:aws:kms:ap-south-1:081371230266:key/mrk-494de01865834f7dbcddd1152e161b0f"

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "engine-log"
  }

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "slow-log"
  }

  maintenance_window       = "sat:22:00-sat:23:00"
  multi_az_enabled         = "false"
  network_type             = "ipv4"
  node_type                = "cache.t3.micro"
  num_cache_clusters       = "1"
  num_node_groups          = "1"
  parameter_group_name     = "likeminds-staging-redis-parameter-group"
  port                     = "6379"
  replicas_per_node_group  = "0"
  replication_group_id     = "likeminds-staging-swarm-redis"
  security_group_ids       = ["sg-0ed73115f2d2032ff"]
  snapshot_retention_limit = "1"
  snapshot_window          = "02:00-03:00"
  subnet_group_name        = "${aws_elasticache_subnet_group.tfer--likeminds-staging-redis-subnet-group.name}"

  tags = {
    Name = "likeminds-staging-swarm-redis"
  }

  tags_all = {
    Name = "likeminds-staging-swarm-redis"
  }

  transit_encryption_enabled = "false"
}

resource "aws_elasticache_replication_group" "tfer--likeminds-staging-swarm-worker-redis" {
  at_rest_encryption_enabled = "true"
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = "false"
  data_tiering_enabled       = "false"
  description                = "likeminds-staging-swarm-worker-redis"
  engine                     = "redis"
  engine_version             = "6.2"
  ip_discovery               = "ipv4"

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "engine-log"
  }

  log_delivery_configuration {
    destination      = "likeminds-staging-redis-logs"
    destination_type = "cloudwatch-logs"
    log_format       = "json"
    log_type         = "slow-log"
  }

  maintenance_window       = "sat:22:00-sat:23:00"
  multi_az_enabled         = "false"
  network_type             = "ipv4"
  node_type                = "cache.t3.micro"
  num_cache_clusters       = "1"
  num_node_groups          = "1"
  parameter_group_name     = "likeminds-staging-redis-parameter-group"
  port                     = "6379"
  replicas_per_node_group  = "0"
  replication_group_id     = "likeminds-staging-swarm-worker-redis"
  security_group_ids       = ["sg-06269258a382a126c"]
  snapshot_retention_limit = "1"
  snapshot_window          = "02:00-03:00"
  subnet_group_name        = "${aws_elasticache_subnet_group.tfer--likeminds-staging-redis-subnet-group.name}"

  tags = {
    Name = "likeminds-staging-swarm-worker-redis"
  }

  tags_all = {
    Name = "likeminds-staging-swarm-worker-redis"
  }

  transit_encryption_enabled = "false"
}
